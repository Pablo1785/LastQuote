import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/data_sources/data_source_status_picker/data_source_status_picker_bloc.dart';
import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:ddd/presentation/core/fun_logo.dart';
import 'package:ddd/presentation/core/quotes_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:shimmer/shimmer.dart';

import '../../injection.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserTermDataSourceEngagementWatcherBloc>(
        create: (BuildContext context) =>
            getIt<UserTermDataSourceEngagementWatcherBloc>()
              ..add(
                const UserTermDataSourceEngagementWatcherEvent
                    .watchMostPopularTermsforCurrentUserStarted(limit: 20),
              ),
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
                      );
                    },
                  );
                },
                loadFailure: (userTermDataSourceEngagementFailureState) =>
                    Center(
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
        ));
  }
}

class UserTermDataSourceEngagementListItemWidget extends StatelessWidget {
  const UserTermDataSourceEngagementListItemWidget({
    Key? key,
    required this.currUserTermDatasourceEngagement,
  }) : super(key: key);

  final UserTermDataSourceEngagement currUserTermDatasourceEngagement;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(currUserTermDatasourceEngagement.isInitialInterest
              ? Icons.star
              : Icons.star_border),
        ),
        title: Text(currUserTermDatasourceEngagement.termId),
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
