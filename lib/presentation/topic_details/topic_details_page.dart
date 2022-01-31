import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:ddd/application/topic_details/topic_details_charts_bloc.dart';
import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:ddd/presentation/core/quotes_logo.dart';
import 'package:ddd/presentation/user_term_data_source_engagement/user_term_data_source_engagement_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:shimmer/shimmer.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../injection.dart';

class TopicDetailsPage extends StatelessWidget {
  const TopicDetailsPage({
    Key? key,
    required this.termId,
  }) : super(key: key);

  final String termId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserTermDataSourceEngagementWatcherBloc>(
          create: (BuildContext context) =>
              getIt<UserTermDataSourceEngagementWatcherBloc>()
                ..add(
                  UserTermDataSourceEngagementWatcherEvent
                      .getForCurrentUserAndTermStarted(
                    termId,
                  ),
                ),
        ),
        BlocProvider(
          create: (context) => getIt<TopicDetailsChartsBloc>()
            ..add(
              TopicDetailsChartsEvent.termChanged(
                termId,
              ),
            ),
        ),
      ],
      child: BlocBuilder<UserTermDataSourceEngagementWatcherBloc,
          UserTermDataSourceEngagementWatcherState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(termId),
            ),
            body: Scaffold(
              appBar: AppBar(
                leading: Container(),
                backgroundColor: Theme.of(context).primaryColor.withAlpha(0x00),
                foregroundColor: Colors.grey[700],
                elevation: 0.0,
                toolbarHeight: 35,
                bottom: PreferredSize(
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Your interactions with this topic in different sources',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withAlpha(0x55),
                    height: 20.0,
                  ),
                  preferredSize: const Size.fromHeight(
                    10,
                  ),
                ),
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
                    return const TopicDetailsNoEngagementsWidget();
                  }
                  final userId =
                      userTermDataSourceEngagements.iter.first.userId;
                  final fakeData = [
                    UserTermDataSourceEngagement(
                      dataSourceId: UniqueId.fromUniqueString('Facebook'),
                      termId: termId,
                      userId: userId,
                      id: JunctionUniqueId.fromUniqueString(
                        'Facebook_' + termId + '_' + userId.getOrCrash(),
                      ),
                      isInitialInterest: true,
                      likeCount: 15,
                      openCount: 25,
                      shareCount: 7,
                      dismissCount: 3,
                    ),
                    UserTermDataSourceEngagement(
                      dataSourceId: UniqueId.fromUniqueString('Twitter'),
                      termId: termId,
                      userId: userId,
                      id: JunctionUniqueId.fromUniqueString(
                        'Twitter_' + termId + '_' + userId.getOrCrash(),
                      ),
                      isInitialInterest: false,
                      likeCount: 10,
                      openCount: 40,
                      shareCount: 10,
                      dismissCount: 5,
                    ),
                    UserTermDataSourceEngagement(
                      dataSourceId: UniqueId.fromUniqueString('Reddit'),
                      termId: termId,
                      userId: userId,
                      id: JunctionUniqueId.fromUniqueString(
                        'Reddit_' + termId + '_' + userId.getOrCrash(),
                      ),
                      isInitialInterest: false,
                      likeCount: 5,
                      openCount: 15,
                      shareCount: 2,
                      dismissCount: 1,
                    ),
                  ];
                  fakeData.addAll(userTermDataSourceEngagements.iter);

                  return ListView(
                    shrinkWrap: true,
                    children: [
                      ...fakeData.map(
                        (currUserTermDataSourceEngagement) {
                          return TopicDetailsUserTermDataSourceEngagementListItemWidget(
                            currUserTermDatasourceEngagement:
                                currUserTermDataSourceEngagement,
                          );
                        },
                      ),
                      SizedBox(
                        height: 350,
                        child: TopicDetailsChartWidget(
                          userTermDataSourceEngagements:
                              userTermDataSourceEngagements,
                        ),
                      )
                    ],
                  );
                },
                loadFailure: (userTermDataSourceEngagementFailureState) {
                  return userTermDataSourceEngagementFailureState
                      .userTermDataSourceEngagementFailure
                      .maybeMap(
                    noEngagement: (noEngagementState) =>
                        const TopicDetailsNoEngagementsWidget(),
                    orElse: () {
                      return Center(
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
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class TopicDetailsChartWidget extends StatelessWidget {
  const TopicDetailsChartWidget({
    Key? key,
    required this.userTermDataSourceEngagements,
  }) : super(key: key);

  final KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopicDetailsChartsBloc, TopicDetailsChartsState>(
      builder: (context, state) {
        return UserTermDataSourceEngagementPieChart.featurePreview(
          engagementType: state.currentEngagementType,
          termId: state.currentTermId,
          userId: userTermDataSourceEngagements.iter.first.userId,
          userTermDataSourceEngagements: userTermDataSourceEngagements,
        );
      },
    );
  }
}

class TopicDetailsUserTermDataSourceEngagementListItemWidget
    extends StatelessWidget {
  const TopicDetailsUserTermDataSourceEngagementListItemWidget({
    Key? key,
    required this.currUserTermDatasourceEngagement,
  }) : super(key: key);

  final UserTermDataSourceEngagement currUserTermDatasourceEngagement;

  @override
  Widget build(BuildContext context) {
    final dataSourceName =
        currUserTermDatasourceEngagement.dataSourceId.getOrCrash() ==
                'CLIENT_APP'
            ? 'Last Quote'
            : currUserTermDatasourceEngagement.dataSourceId.getOrCrash();
    return Card(
      child: ListTile(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(currUserTermDatasourceEngagement.isInitialInterest
              ? Icons.star
              : Icons.star_border),
        ),
        title: Text(
          'Interactions in ' + dataSourceName,
        ),
        subtitle: BlocBuilder<TopicDetailsChartsBloc, TopicDetailsChartsState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...['like', 'share', 'open', 'dismiss'].map(
                  (engagementType) {
                    var icon = Icons.thumb_up;
                    var value = currUserTermDatasourceEngagement.likeCount;

                    switch (engagementType) {
                      case 'like':
                        icon = Icons.thumb_up;
                        value = currUserTermDatasourceEngagement.likeCount;
                        break;
                      case 'share':
                        icon = Icons.share;
                        value = currUserTermDatasourceEngagement.shareCount;
                        break;
                      case 'open':
                        icon = Icons.open_in_browser;
                        value = currUserTermDatasourceEngagement.openCount;
                        break;
                      case 'dismiss':
                        icon = Icons.delete;
                        value = currUserTermDatasourceEngagement.dismissCount;
                        break;
                      default:
                        icon = Icons.thumb_up;
                        value = currUserTermDatasourceEngagement.likeCount;
                        break;
                    }
                    return ChoiceChip(
                      selectedColor: Colors.indigo[50],
                      selected: state.currentEngagementType == engagementType,
                      avatar: Icon(
                        icon,
                        color: state.currentEngagementType == engagementType
                            ? Colors.indigo[600]
                            : null,
                      ),
                      labelStyle: TextStyle(
                        color: state.currentEngagementType == engagementType
                            ? Colors.indigo[600]
                            : null,
                      ),
                      label: Text(value.toString()),
                      onSelected: (isSelected) {
                        context.read<TopicDetailsChartsBloc>().add(
                              TopicDetailsChartsEvent.engagementChanged(
                                  engagementType),
                            );
                      },
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class TopicDetailsNoEngagementsWidget extends StatelessWidget {
  const TopicDetailsNoEngagementsWidget({
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
            'No previous interactions with this topic detected.\n\nThey will appear here after you like, read or share recommendations containing this topic.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
