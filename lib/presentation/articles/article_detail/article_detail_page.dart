import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/presentation/articles/widgets/like_button.dart';
import 'package:ddd/presentation/core/fun_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer/shimmer.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../injection.dart';

class ArticleDetailPage extends HookWidget {
  const ArticleDetailPage({
    Key? key,
    required this.article,
    required this.userArticleEngagement,
  }) : super(key: key);

  final Article article;
  final UserArticleEngagement userArticleEngagement;

  @override
  Widget build(BuildContext context) {
    final loadingProgress = useState(0.0);
    final isLoading = useState(true);
    final statefulUserArticleEngagement = useState(userArticleEngagement);

    return BlocProvider(
      create: (context) => getIt<UserArticleEngagementActorBloc>(),
      child: Scaffold(
        floatingActionButton: FloatingLikeButton(
          statefulUserArticleEngagement: statefulUserArticleEngagement,
        ),
        appBar: AppBar(
          title: Text(article.title.getOrCrash()),
          actions: [],
        ),
        body: Stack(
          children: [
            WebView(
              initialUrl: article.url.getOrCrash(),
              onProgress: (int progress) {
                loadingProgress.value = progress.floorToDouble();
              },
              onPageFinished: (_) {
                isLoading.value = false;
              },
            ),
            loadingProgress.value < 90
                ? Center(
                    child: Shimmer.fromColors(
                      baseColor: Colors.indigo[400]!,
                      highlightColor: Colors.blue[200]!,
                      enabled: true,
                      child: const FunLogo(),
                      direction: ShimmerDirection.btt,
                      period: const Duration(milliseconds: 2000),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class FloatingLikeButton extends StatelessWidget {
  const FloatingLikeButton({
    Key? key,
    required this.statefulUserArticleEngagement,
  }) : super(key: key);

  final ValueNotifier<UserArticleEngagement> statefulUserArticleEngagement;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: BlocListener<UserArticleEngagementActorBloc,
          UserArticleEngagementActorState>(
        listener: (context, state) {
          state.maybeMap(
            likeSuccess: (successState) {
              statefulUserArticleEngagement.value =
                  successState.updatedUserArticleEngagement;
              return LikeButton(
                userArticleEngagement: statefulUserArticleEngagement.value,
              );
            },
            orElse: () {},
          );
        },
        child: LikeButton(
          userArticleEngagement: statefulUserArticleEngagement.value,
        ),
      ),
    );
  }
}
