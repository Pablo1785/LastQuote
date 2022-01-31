import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/application/article_term_counts/article_term_count_watcher/article_term_count_watcher_bloc.dart';
import 'package:ddd/application/data_sources/data_source_status_picker/data_source_status_picker_bloc.dart';
import 'package:ddd/application/topics/bloc/topic_recommendations_dropdown_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart';
import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:ddd/presentation/articles/articles_overview/widgets/articles_overview_body_widget.dart';
import 'package:ddd/presentation/core/fun_logo.dart';
import 'package:ddd/presentation/core/quotes_logo.dart';
import 'package:ddd/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:share/share.dart';
import 'package:shimmer/shimmer.dart';

import '../../injection.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserTermDataSourceEngagementWatcherBloc>(
          create: (BuildContext context) =>
              getIt<UserTermDataSourceEngagementWatcherBloc>()
                ..add(
                  const UserTermDataSourceEngagementWatcherEvent
                      .watchMostPopularTermsForCurrentUserStarted(limit: 20),
                ),
        ),
        BlocProvider<TopicRecommendationsDropdownBloc>(
          create: (context) => getIt<TopicRecommendationsDropdownBloc>(),
        ),
        BlocProvider<ArticleTermCountWatcherBloc>(
          create: (context) => getIt<ArticleTermCountWatcherBloc>(),
        ),
        BlocProvider<UserArticleEngagementWatcherBloc>(
          create: (context) => getIt<UserArticleEngagementWatcherBloc>(),
        ),
        BlocProvider<UserArticleEngagementActorBloc>(
          create: (context) => getIt<UserArticleEngagementActorBloc>(),
        ),
      ],
      child: BlocBuilder<UserTermDataSourceEngagementWatcherBloc,
          UserTermDataSourceEngagementWatcherState>(
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              icon: const Icon(Icons.add),
              label: Text('Pick your own'),
              enableFeedback: true,
              onPressed: () => AutoRouter.of(context)
                  .replaceNamed('/initial-interests-page'),
            ),
            body: state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Center(
                child: Shimmer.fromColors(
                  baseColor: Colors.indigo[400]!,
                  highlightColor: Colors.blue[200]!,
                  enabled: true,
                  child: const QuotesLogo(),
                ),
              ),
              loadSuccess: (userTermDataSourceEngagementsSuccessState) {
                final userTermDataSourceEngagements =
                    userTermDataSourceEngagementsSuccessState
                        .userTermDataSourceEngagements;
                if (userTermDataSourceEngagements.size == 0) {
                  return const NoEngagementsWidget();
                }
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: userTermDataSourceEngagements.size,
                  itemBuilder: (context, index) {
                    final currUserTermDatasourceEngagement =
                        userTermDataSourceEngagements[index];
                    return UserTermDataSourceEngagementListItemWidget(
                      currUserTermDatasourceEngagement:
                          currUserTermDatasourceEngagement,
                      posInList: index,
                    );
                  },
                );
              },
              loadFailure: (userTermDataSourceEngagementFailureState) => Center(
                child: Column(
                  children: const [
                    Icon(
                      Icons.error,
                      size: 60,
                    ),
                    Text(
                        'Error loading your activity. Restart the app and try again.'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class UserTermDataSourceEngagementListItemWidget extends StatelessWidget {
  const UserTermDataSourceEngagementListItemWidget({
    Key? key,
    required this.currUserTermDatasourceEngagement,
    required this.posInList,
  }) : super(key: key);

  final int posInList;
  final UserTermDataSourceEngagement currUserTermDatasourceEngagement;

  void _navToTopicDetailsFn(BuildContext context) {
    AutoRouter.of(context).push(
      TopicDetailsRoute(
        termId: currUserTermDatasourceEngagement.termId,
      ),
    );
  }

  void _showRecommendationsDropdown(BuildContext context) {
    return;
  }

  @override
  Widget build(BuildContext context) {
    final tileColor = Colors.white;
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () => _navToTopicDetailsFn(context),
            tileColor: tileColor,
            leading: IconButton(
              padding: EdgeInsets.only(right: 10),
              onPressed: () {},
              icon: Icon(
                currUserTermDatasourceEngagement.isInitialInterest
                    ? Icons.star
                    : Icons.star_border,
                color: currUserTermDatasourceEngagement.isInitialInterest
                    ? Colors.indigo[600]
                    : null,
              ),
            ),
            horizontalTitleGap: 0,
            trailing: IconButton(
              padding: EdgeInsets.only(left: 10),
              onPressed: () =>
                  context.read<TopicRecommendationsDropdownBloc>().add(
                        TopicRecommendationsDropdownEvent
                            .showRecommendationsPressed(
                          posInList,
                          currUserTermDatasourceEngagement.termId,
                        ),
                      ),
              icon: BlocBuilder<TopicRecommendationsDropdownBloc,
                  TopicRecommendationsDropdownState>(
                builder: (context, state) {
                  if (state.currentPos == posInList) {
                    return Icon(Icons.arrow_drop_down);
                  }
                  return Icon(Icons.arrow_right);
                },
              ),
            ),
            title: Text(currUserTermDatasourceEngagement.termId),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...['like', 'share', 'open', 'dismiss'].map((engagementType) {
                  var icon = Icons.thumb_up_outlined;
                  var value = currUserTermDatasourceEngagement.likeCount;

                  switch (engagementType) {
                    case 'like':
                      icon = Icons.thumb_up_outlined;
                      value = currUserTermDatasourceEngagement.likeCount;
                      break;
                    case 'share':
                      icon = Icons.share_outlined;
                      value = currUserTermDatasourceEngagement.shareCount;
                      break;
                    case 'open':
                      icon = Icons.open_in_browser_outlined;
                      value = currUserTermDatasourceEngagement.openCount;
                      break;
                    case 'dismiss':
                      icon = Icons.delete_outlined;
                      value = currUserTermDatasourceEngagement.dismissCount;
                      break;
                    default:
                      icon = Icons.thumb_up_outlined;
                      value = currUserTermDatasourceEngagement.likeCount;
                      break;
                  }
                  return ActionChip(
                    backgroundColor: tileColor,
                    avatar: Icon(
                      icon,
                      color: value > 0 ? Colors.indigo[600] : Colors.grey[600],
                    ),
                    labelStyle: TextStyle(
                      color: value > 0 ? Colors.indigo[600] : Colors.grey[600],
                    ),
                    label: Text(value.toString()),
                    onPressed: () => _navToTopicDetailsFn(context),
                  );
                }),
              ],
            ),
          ),
          BlocBuilder<TopicRecommendationsDropdownBloc,
              TopicRecommendationsDropdownState>(
            builder: (context, state) {
              if (state.currentPos == posInList) {
                if (state.isLoadingRecommendations) {
                  return const LinearProgressIndicator();
                } else if (state.isShowingRecommendations) {
                  if ((state.currentRecommendations?.size ?? 0) > 0) {
                    context.read<ArticleTermCountWatcherBloc>().add(
                          ArticleTermCountWatcherEvent.getForEachArticleStarted(
                            state.currentRecommendations!,
                            true,
                            3,
                          ),
                        );
                    context.read<UserArticleEngagementWatcherBloc>().add(
                          UserArticleEngagementWatcherEvent
                              .watchForCurrentUserAndArticlesStarted(
                            state.currentRecommendations!,
                          ),
                        );
                    return ArticleLoadSuccessWidget(
                      articles: state.currentRecommendations!,
                    );
                  }
                  return Container();
                } else if (state.articleTermCountFailureOption.isSome()) {
                  return Text(
                    state.articleTermCountFailureOption.fold(
                      () => '',
                      (failure) => failure.toString(),
                    ),
                  );
                } else if (state.articleFailureOption.isSome()) {
                  return Text(
                    state.articleFailureOption.fold(
                      () => '',
                      (failure) => failure.toString(),
                    ),
                  );
                }
              }

              return Container();
            },
          ),
        ],
      ),
    );
  }
}

class NoEngagementsWidget extends StatelessWidget {
  const NoEngagementsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          ColorFiltered(
            child: QuotesLogo(),
            colorFilter: ColorFilter.mode(
              Colors.grey,
              BlendMode.srcATop,
            ),
          ),
          Text(
            'No previous activity detected.\n\nTry reading, liking or sharing some of your recommendations and come back.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
