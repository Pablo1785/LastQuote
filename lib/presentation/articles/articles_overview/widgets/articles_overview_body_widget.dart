import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/articles/article_failure.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement_failure.dart';
import 'package:ddd/presentation/articles/widgets/like_button.dart';
import 'package:ddd/presentation/routes/app_router.gr.dart';
import 'package:kt_dart/kt.dart';

import '../../../../application/articles/article_watcher/article_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesOverviewBody extends StatelessWidget {
  const ArticlesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleWatcherBloc, ArticleWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (loadSuccessState) {
            context.read<UserArticleEngagementWatcherBloc>().add(
                  UserArticleEngagementWatcherEvent
                      .watchForCurrentUserAndArticlesStarted(
                    loadSuccessState.articles,
                  ),
                );
            return BlocBuilder<UserArticleEngagementWatcherBloc,
                UserArticleEngagementWatcherState>(
              builder: (context, userArticleEngagementState) {
                return userArticleEngagementState.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loadSuccess: (userArticleEngagementLoadSuccessState) {
                    return ArticleLoadSuccessWidget(
                      articles: loadSuccessState.articles,
                      userArticleEngagements:
                          userArticleEngagementLoadSuccessState
                              .userArticleEngagements,
                    );
                  },
                  loadFailure: (userArticleEngagementLoadFailureState) {
                    return UserArticleEngagementLoadFailureWidget(
                      userArticleEngagementFailure:
                          userArticleEngagementLoadFailureState
                              .userArticleEngagementFailure,
                    );
                  },
                );
              },
            );
          },
          loadFailure: (loadFailureState) {
            return ArticleLoadFailureWidget(
              articleFailure: loadFailureState.articleFailure,
            );
          },
        );
      },
    );
  }
}

class ArticleLoadFailureWidget extends StatelessWidget {
  const ArticleLoadFailureWidget({
    Key? key,
    required this.articleFailure,
  }) : super(key: key);

  final ArticleFailure articleFailure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Icon(
            Icons.error_outline,
            size: 72,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleFailure.toString(),
          ),
        ],
      ),
    );
  }
}

class UserArticleEngagementLoadFailureWidget extends StatelessWidget {
  const UserArticleEngagementLoadFailureWidget({
    Key? key,
    required this.userArticleEngagementFailure,
  }) : super(key: key);

  final UserArticleEngagementFailure userArticleEngagementFailure;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Icon(
            Icons.error_outline,
            size: 72,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            userArticleEngagementFailure.toString(),
          ),
        ],
      ),
    );
  }
}

class ArticleLoadSuccessWidget extends StatelessWidget {
  const ArticleLoadSuccessWidget({
    Key? key,
    required this.articles,
    required this.userArticleEngagements,
  }) : super(key: key);

  final KtList<Article> articles;
  final KtMap<String, UserArticleEngagement> userArticleEngagements;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final article = articles[index];
        if (article.failureOption.isSome()) {
          return Container(
            color: Colors.red,
            width: 100,
            height: 100,
          );
        } else {
          final userArticleEngagement =
              userArticleEngagements[article.id.getOrCrash()];
          return Card(
            child: ListTile(
              leading: LikeButton(
                userArticleEngagement: userArticleEngagement!,
                userArticleEngagementActorBloc:
                    context.read<UserArticleEngagementActorBloc>(),
              ),
              title: Text(
                article.title.getOrCrash(),
              ),
              subtitle: Text(
                article.url.getOrCrash(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: () {
                switch (article.mediaType.getOrCrash()) {
                  case 'social_media_post':
                    return const Icon(Icons.group_outlined);
                    break;
                  case 'encyclopedia_entry':
                    return const Icon(Icons.article_outlined);
                    break;
                  default:
                    return const Icon(Icons.article_outlined);
                    break;
                }
              }(),
              onTap: () {
                AutoRouter.of(context).push(
                  ArticleDetailRoute(
                    article: article,
                    userArticleEngagement: userArticleEngagement,
                    userArticleEngagementActorBloc:
                        context.read<UserArticleEngagementActorBloc>(),
                  ),
                );
              },
            ),
          );
        }
      },
      itemCount: articles.size,
    );
  }
}
