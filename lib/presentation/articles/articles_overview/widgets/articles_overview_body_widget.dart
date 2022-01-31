import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/application/article_sources/article_source_picker/article_source_picker_bloc.dart';
import 'package:ddd/application/article_term_counts/article_term_count_watcher/article_term_count_watcher_bloc.dart';
import 'package:ddd/application/recommendations/recommendation_watcher/recommendation_watcher_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart';
import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/articles/article_failure.dart';
import 'package:ddd/domain/recommendations/recommendation_failure.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement_failure.dart';
import 'package:ddd/presentation/articles/widgets/like_button.dart';
import 'package:ddd/presentation/routes/app_router.gr.dart';
import 'package:kt_dart/kt.dart';
import 'package:share/share.dart';

import '../../../../application/articles/article_watcher/article_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesOverviewBody extends StatelessWidget {
  const ArticlesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RecommendationBasedBodyWidget();
  }
}

class RecommendationBasedBodyWidget extends StatelessWidget {
  const RecommendationBasedBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendationWatcherBloc, RecommendationWatcherState>(
      builder: (context, recommendationWatcherState) {
        return RefreshIndicator(
          onRefresh: () async {
            context.read<RecommendationWatcherBloc>().add(
                  const RecommendationWatcherEvent
                      .watchAllForCurrentUserStarted(),
                );
            context.read<ArticleSourcePickerBloc>().add(
                  const ArticleSourcePickerEvent.initialLoadStarted(),
                );
          },
          child: recommendationWatcherState.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (recommendationsLoadSuccessState) {
              context.read<ArticleWatcherBloc>().add(
                    ArticleWatcherEvent.watchByIdStarted(
                      recommendationsLoadSuccessState.recommendations.map(
                        (r) => r.idAndValue,
                      ),
                    ),
                  );
              return BlocBuilder<ArticleWatcherBloc, ArticleWatcherState>(
                builder: (context, articleWatcherState) {
                  return articleWatcherState.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadSuccess: (articlesLoadSuccessState) {
                      if (articlesLoadSuccessState.articles.size > 0) {
                        context.read<ArticleTermCountWatcherBloc>().add(
                              ArticleTermCountWatcherEvent
                                  .getForEachArticleStarted(
                                articlesLoadSuccessState.articles,
                                true,
                                3,
                              ),
                            );
                        context.read<UserArticleEngagementWatcherBloc>().add(
                              UserArticleEngagementWatcherEvent
                                  .watchForCurrentUserAndArticlesStarted(
                                articlesLoadSuccessState.articles,
                              ),
                            );
                      }
                      return ArticleLoadSuccessWidget(
                        articles: articlesLoadSuccessState.articles,
                      );
                    },
                    loadFailure: (articleLoadFailureState) =>
                        ArticleLoadFailureWidget(
                      articleFailure: articleLoadFailureState.articleFailure,
                    ),
                  );
                },
              );
            },
            loadFailure: (recommendationLoadFailureState) =>
                RecommendationLoadFailureWidget(
              recommendationFailure:
                  recommendationLoadFailureState.recommendationFailure,
            ),
          ),
        );
      },
    );
  }
}

class RecommendationLoadFailureWidget extends StatelessWidget {
  const RecommendationLoadFailureWidget({
    Key? key,
    required this.recommendationFailure,
  }) : super(key: key);

  final RecommendationFailure recommendationFailure;

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
            recommendationFailure.toString(),
          ),
        ],
      ),
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
          Icon(
            articleFailure.maybeMap(
              noArticles: (_) => Icons.sync_problem,
              orElse: () => Icons.error_outline,
            ),
            size: 72,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleFailure.map(
              unexpected: (_) =>
                  "Unexpected failure while loading your recommendations. Please, restart the application.",
              insufficientPermissions: (_) =>
                  "You don't have permission to view this content.",
              sourceDisabled: (_) =>
                  "You have disabled critical sources for displaying recommendations. Try enabling some recommendation sources so we can show you content.",
              noActiveSource: (_) =>
                  "We have not detected any enabled recommendation source for your account. Try enabling some sources in your settings or restart the application.",
              noArticles: (_) =>
                  "No suitable recommendations.\n\nWe will prepare new recommendations shortly.",
            ),
            textAlign: TextAlign.center,
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
  }) : super(key: key);

  final KtList<Article> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final article = articles[index];
        if (article.failureOption.isSome()) {
          return Container(
            color: Colors.red,
            width: 100,
            height: 100,
          );
        } else {
          return BlocBuilder<UserArticleEngagementWatcherBloc,
              UserArticleEngagementWatcherState>(
            builder: (context, state) {
              return state.maybeMap(
                loadSuccess:
                    (userArticleEngagementLoadSuccessStateChecksDismiss) {
                  if (userArticleEngagementLoadSuccessStateChecksDismiss
                          .userArticleEngagements[article.id.getOrCrash()]
                          ?.isDismissed ??
                      false) {
                    return Container();
                  }
                  return ArticleListItemWidget(
                    articles: articles,
                    article: article,
                  );
                },
                orElse: () => Container(),
              );
            },
          );
        }
      },
      itemCount: articles.size,
    );
  }
}

class ArticleListItemWidget extends StatelessWidget {
  const ArticleListItemWidget({
    Key? key,
    required this.articles,
    required this.article,
  }) : super(key: key);

  final KtList<Article> articles;
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: ArticleListItemLeadingWidget(
          articles: articles,
          article: article,
        ),
        title: Text(
          article.title.getOrCrash(),
        ),
        // isThreeLine: true,
        subtitle: Column(
          children: [
            Text(
              article.url.getOrCrash(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            BlocBuilder<ArticleTermCountWatcherBloc,
                ArticleTermCountWatcherState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) => const LinearProgressIndicator(),
                  loadSuccess: (successState) {
                    // User, DataSources (inside Articles) and ArticleTermCounts loaded - start loading UserTermDataSourceEngagements

                    final currArticleTermCounts = successState
                        .articleTermCounts.iter
                        .where((element) =>
                            element.articleId.getOrCrash() ==
                            article.id.getOrCrash())
                        .toList();
                    currArticleTermCounts.sort(
                      (atc1, atc2) =>
                          atc2.termImportance.compareTo(atc1.termImportance),
                    );
                    return Container(
                      alignment: Alignment.topLeft,
                      height: currArticleTermCounts.isNotEmpty ? 50.0 : 0.0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: currArticleTermCounts.length > 3
                            ? 3
                            : currArticleTermCounts.length,
                        itemBuilder: (context, index) {
                          final articleTermCount = currArticleTermCounts[index];
                          return ActionChip(
                            elevation: 4.0,
                            backgroundColor: Colors.indigo[400]!
                                .withOpacity(articleTermCount.termImportance),
                            label: Text(
                              articleTermCount.termId +
                                  ': ' +
                                  (articleTermCount.termImportance * 100)
                                      .toInt()
                                      .toString() +
                                  "%",
                              style: TextStyle(
                                color: articleTermCount.termImportance > 0.45
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            onPressed: () {
                              FlushbarHelper.createInformation(
                                // Title case the sentence
                                message: 'Saying that article ' +
                                    article.title.getOrCrash() +
                                    ' is about ' +
                                    articleTermCount.termId +
                                    ' would be ' +
                                    (articleTermCount.termImportance * 100)
                                        .toInt()
                                        .toString() +
                                    '% accurate',
                              ).show(context);
                              AutoRouter.of(context).push(
                                TopicDetailsRoute(
                                  termId: articleTermCount.termId,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                  loadFailure: (failureState) => Text(
                    'Failed to load topics. Reason: ' +
                        failureState.articleTermCountFailure.toString(),
                  ),
                );
              },
            ),
          ],
        ),
        trailing: IconButton(
          iconSize: 30,
          onPressed: () {
            final userArticleEngagement =
                context.read<UserArticleEngagementWatcherBloc>().state.maybeMap(
                      loadSuccess: (uaeSuccessState) => uaeSuccessState
                          .userArticleEngagements[article.id.getOrCrash()],
                      orElse: () => null,
                    );
            if (userArticleEngagement != null) {
              context.read<UserArticleEngagementActorBloc>().add(
                    UserArticleEngagementActorEvent.dismissPressed(
                        right(userArticleEngagement)),
                  );
            }
          },
          icon: const Icon(
            Icons.delete_forever_outlined,
          ),
        ),
        onTap: () {
          final userArticleEngagementActorBloc =
              context.read<UserArticleEngagementActorBloc>();
          final userArticleEngagementWatcherBloc =
              context.read<UserArticleEngagementWatcherBloc>();

          userArticleEngagementWatcherBloc.state.maybeMap(
            loadSuccess: (loadSuccessStateUserArticleEngagementActor) {
              userArticleEngagementActorBloc.add(
                UserArticleEngagementActorEvent.openPressed(
                  right(loadSuccessStateUserArticleEngagementActor
                      .userArticleEngagements[article.id.getOrCrash()]!),
                ),
              );
            },
            orElse: () {},
          );
          AutoRouter.of(context).push(
            ArticleDetailRoute(
              article: article,
            ),
          );
        },
        onLongPress: () {
          final userArticleEngagementActorBloc =
              context.read<UserArticleEngagementActorBloc>();
          final userArticleEngagementWatcherBloc =
              context.read<UserArticleEngagementWatcherBloc>();

          userArticleEngagementWatcherBloc.state.maybeMap(
            loadSuccess: (loadSuccessStateUserArticleEngagementActor) {
              userArticleEngagementActorBloc.add(
                UserArticleEngagementActorEvent.sharePressed(
                  right(loadSuccessStateUserArticleEngagementActor
                      .userArticleEngagements[article.id.getOrCrash()]!),
                ),
              );
            },
            orElse: () {},
          );

          Share.share(
            "Check out this article I found on The Last Quote: " +
                article.url.getOrCrash(),
            subject: article.title.getOrCrash(),
          );
        },
      ),
    );
  }
}

class ArticleListItemLeadingWidget extends StatelessWidget {
  const ArticleListItemLeadingWidget({
    Key? key,
    required this.articles,
    required this.article,
  }) : super(key: key);

  final KtList<Article> articles;
  final Article article;

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserArticleEngagementActorBloc,
        UserArticleEngagementActorState>(
      listener: (context, actorState) {
        actorState.maybeWhen(
          likeSuccess: (_) =>
              context.read<UserArticleEngagementWatcherBloc>().add(
                    UserArticleEngagementWatcherEvent
                        .watchForCurrentUserAndArticlesStarted(
                      articles,
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
              ),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
