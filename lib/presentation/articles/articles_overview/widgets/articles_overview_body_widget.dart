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
          const Icon(
            Icons.error_outline,
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
                  "No recommendations match the selected criteria",
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
          return Card(
            child: ListTile(
              leading: BlocListener<UserArticleEngagementActorBloc,
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
                            (atc1, atc2) => atc2.termImportance
                                .compareTo(atc1.termImportance),
                          );
                          return Container(
                            alignment: Alignment.topLeft,
                            height:
                                currArticleTermCounts.isNotEmpty ? 50.0 : 0.0,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: currArticleTermCounts.length > 3
                                  ? 3
                                  : currArticleTermCounts.length,
                              itemBuilder: (context, index) {
                                final articleTermCount =
                                    currArticleTermCounts[index];
                                return ActionChip(
                                  label: Text(
                                    articleTermCount.termId +
                                        ': ' +
                                        (articleTermCount.termImportance * 100)
                                            .toInt()
                                            .toString() +
                                        "%",
                                  ),
                                  onPressed: () {
                                    FlushbarHelper.createInformation(
                                      // Title case the sentence
                                      message: 'Saying that article ' +
                                          article.title.getOrCrash() +
                                          ' is about ' +
                                          articleTermCount.termId +
                                          ' would be ' +
                                          (articleTermCount.termImportance *
                                                  100)
                                              .toInt()
                                              .toString() +
                                          '% accurate',
                                    ).show(context);
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
              trailing: () {
                switch (article.mediaType.getOrCrash()) {
                  case 'social_media_post':
                    return const Icon(Icons.group_outlined);
                    break;
                  case 'encyclopedia_entry':
                    return const Icon(Icons.article_outlined);
                    break;
                  case 'website':
                    return const Icon(Icons.web_outlined);
                  default:
                    return const Icon(Icons.article_outlined);
                    break;
                }
              }(),
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
      },
      itemCount: articles.size,
    );
  }
}

class UserArticleEngagementBasedBodyWidget extends StatelessWidget {
  const UserArticleEngagementBasedBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleWatcherBloc, ArticleWatcherState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            context.read<RecommendationWatcherBloc>().add(
                  const RecommendationWatcherEvent
                      .watchAllForCurrentUserStarted(),
                );
            context.read<ArticleWatcherBloc>().add(
                  const ArticleWatcherEvent.watchAllStarted(),
                );
            context.read<ArticleSourcePickerBloc>().add(
                  const ArticleSourcePickerEvent.initialLoadStarted(),
                );
          },
          child: state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (articlesLoadSuccessState) {
              context.read<UserArticleEngagementWatcherBloc>().add(
                    UserArticleEngagementWatcherEvent
                        .watchForCurrentUserAndArticlesStarted(
                      articlesLoadSuccessState.articles,
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
                      context.read<ArticleTermCountWatcherBloc>().add(
                            ArticleTermCountWatcherEvent
                                .getForEachArticleStarted(
                              articlesLoadSuccessState.articles,
                              true,
                              3,
                            ),
                          );
                      return BlocListener<UserArticleEngagementActorBloc,
                          UserArticleEngagementActorState>(
                        listener: (context, state) {
                          state.maybeMap(
                            likeSuccess: (successState) {
                              context
                                  .read<UserArticleEngagementWatcherBloc>()
                                  .add(
                                    UserArticleEngagementWatcherEvent
                                        .watchForCurrentUserAndArticlesStarted(
                                      articlesLoadSuccessState.articles,
                                    ),
                                  );
                            },
                            orElse: () {},
                          );
                        },
                        child: ArticleLoadSuccessWidget(
                          articles: articlesLoadSuccessState.articles,
                        ),
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
          ),
        );
      },
    );
  }
}
