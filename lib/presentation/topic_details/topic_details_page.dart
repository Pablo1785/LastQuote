import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:ddd/presentation/core/quotes_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../injection.dart';

class TopicDetailsPage extends StatelessWidget {
  const TopicDetailsPage({
    Key? key,
    required this.termId,
  }) : super(key: key);

  final String termId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserTermDataSourceEngagementWatcherBloc>(
      create: (BuildContext context) =>
          getIt<UserTermDataSourceEngagementWatcherBloc>()
            ..add(
              UserTermDataSourceEngagementWatcherEvent
                  .getForCurrentUserAndTermStarted(
                termId,
              ),
            ),
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
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: userTermDataSourceEngagements.size,
                    itemBuilder: (context, index) {
                      final currUserTermDatasourceEngagement =
                          userTermDataSourceEngagements[index];
                      return TopicDetailsUserTermDataSourceEngagementListItemWidget(
                        currUserTermDatasourceEngagement:
                            currUserTermDatasourceEngagement,
                      );
                    },
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
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionChip(
              avatar: Icon(Icons.thumb_up),
              label:
                  Text(currUserTermDatasourceEngagement.likeCount.toString()),
              onPressed: () {},
            ),
            ActionChip(
              avatar: Icon(Icons.share),
              label:
                  Text(currUserTermDatasourceEngagement.shareCount.toString()),
              onPressed: () {},
            ),
            ActionChip(
              avatar: Icon(Icons.open_in_browser),
              label:
                  Text(currUserTermDatasourceEngagement.openCount.toString()),
              onPressed: () {},
            ),
            ActionChip(
              avatar: Icon(Icons.delete),
              label: Text(
                  currUserTermDatasourceEngagement.dismissCount.toString()),
              onPressed: () {},
            ),
          ],
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
