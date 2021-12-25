import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/presentation/articles/widgets/like_button.dart';
import 'package:ddd/presentation/core/fun_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';
import 'package:shimmer/shimmer.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../injection.dart';

class ArticleDetailPage extends HookWidget {
  const ArticleDetailPage({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    final loadingProgress = useState(0.0);
    final isLoading = useState(true);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<UserArticleEngagementActorBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<UserArticleEngagementWatcherBloc>()
            ..add(
              UserArticleEngagementWatcherEvent
                  .watchForCurrentUserAndArticlesStarted(
                KtList.from(
                  [
                    article,
                  ],
                ),
              ),
            ),
        ),
      ],
      child: Scaffold(
        floatingActionButton: FloatingLikeButton(
          article: article,
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
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: BlocListener<UserArticleEngagementActorBloc,
          UserArticleEngagementActorState>(
        listener: (context, actorState) {
          actorState.maybeWhen(
            likeSuccess: (_) =>
                context.read<UserArticleEngagementWatcherBloc>().add(
                      UserArticleEngagementWatcherEvent
                          .watchForCurrentUserAndArticlesStarted(
                        KtList.from(
                          [
                            article,
                          ],
                        ),
                      ),
                    ),
            orElse: () {},
          );
        },
        child: BlocBuilder<UserArticleEngagementWatcherBloc,
            UserArticleEngagementWatcherState>(
          builder: (context, engagementWatcherState) {
            return engagementWatcherState.map(
              initial: (_) => IconButton(
                icon: const Icon(
                  Icons.thumb_up_alt_outlined,
                ),
                onPressed: () {},
              ),
              loadInProgress: (_) => IconButton(
                icon: const Icon(
                  Icons.thumb_up_alt_outlined,
                ),
                onPressed: () {},
              ),
              loadSuccess: (engagementLoadSuccessState) {
                return LikeButton(
                  userArticleEngagement: engagementLoadSuccessState
                      .userArticleEngagements[article.id.getOrCrash()]!,
                );
              },
              loadFailure: (_) => IconButton(
                icon: const Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
