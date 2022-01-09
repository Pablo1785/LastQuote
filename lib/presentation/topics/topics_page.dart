import 'package:ddd/application/data_sources/data_source_status_picker/data_source_status_picker_bloc.dart';
import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart';
import 'package:ddd/presentation/core/fun_logo.dart';
import 'package:ddd/presentation/core/quotes_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../injection.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserTermDataSourceEngagementWatcherBloc,
        UserTermDataSourceEngagementWatcherState>(
      builder: (context, state) {
        return state.map(
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
            return ListView.builder(
              shrinkWrap: true,
              itemCount: userTermDataSourceEngagements.size,
              itemBuilder: (context, index) {
                final currUserTermDatasourceEngagement =
                    userTermDataSourceEngagements[index];
                return Card(
                  child: ListTile(
                    leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                          currUserTermDatasourceEngagement.isInitialInterest
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
                          label: Text(currUserTermDatasourceEngagement.likeCount
                              .toString()),
                          onPressed: () {},
                        ),
                        ActionChip(
                          avatar: Icon(Icons.share),
                          label: Text(currUserTermDatasourceEngagement
                              .shareCount
                              .toString()),
                          onPressed: () {},
                        ),
                        ActionChip(
                          avatar: Icon(Icons.open_in_browser),
                          label: Text(currUserTermDatasourceEngagement.openCount
                              .toString()),
                          onPressed: () {},
                        ),
                        ActionChip(
                          avatar: Icon(Icons.delete),
                          label: Text(currUserTermDatasourceEngagement
                              .dismissCount
                              .toString()),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          loadFailure: (userTermDataSourceEngagementFailureState) =>
              Container(),
        );
      },
    );
  }
}
