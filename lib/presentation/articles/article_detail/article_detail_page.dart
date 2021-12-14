import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/presentation/articles/widgets/like_button.dart';
import 'package:ddd/presentation/core/fun_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/src/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleDetailPage extends HookWidget {
  const ArticleDetailPage({
    Key? key,
    required this.article,
    required this.userArticleEngagement,
    required this.userArticleEngagementActorBloc,
  }) : super(key: key);

  final Article article;
  final UserArticleEngagement userArticleEngagement;
  final UserArticleEngagementActorBloc userArticleEngagementActorBloc;

  @override
  Widget build(BuildContext context) {
    final loadingProgress = useState(0.0);
    final isLoading = useState(true);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: LikeButton(
          userArticleEngagement: userArticleEngagement,
          userArticleEngagementActorBloc: userArticleEngagementActorBloc,
        ),
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
    );
  }
}
