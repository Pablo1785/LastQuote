import 'package:ddd/application/article_term_counts/article_term_count_watcher/article_term_count_watcher_bloc.dart';
import 'package:ddd/application/articles/article_watcher/article_watcher_bloc.dart';
import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:ddd/application/data_ownership/data_ownership/data_ownership_bloc.dart';
import 'package:ddd/application/recommendations/recommendation_watcher/recommendation_watcher_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart';
import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DialogManagerWidget extends StatelessWidget {
  const DialogManagerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataOwnershipBloc, DataOwnershipState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          deleteUserDataWaitingForConfirmation: (_) => AlertDialog(
            title: const Text('Are you sure you want to delete ALL your data?'),
            actions: [
              TextButton(
                onPressed: () {
                  context.read<DataOwnershipBloc>().add(
                        const DataOwnershipEvent.deleteUserDataConfirmed(),
                      );
                },
                child: const Text('Yes, I\'m sure'),
              ),
              TextButton(
                onPressed: () {
                  context.read<DataOwnershipBloc>().add(
                        const DataOwnershipEvent.deleteUserDataCancelled(),
                      );
                },
                child: const Text('No, take me back'),
              ),
            ],
          ),
          deleteUserDataInProgress: (_) => const AlertDialog(
            title: Text(
              'Deleting user data...',
            ),
            content: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          deleteUserDataSuccess: (_) {
            context.read<AuthBloc>().add(
                  const AuthEvent.signedOut(),
                );
            return FutureBuilder(
              future: Future.delayed(
                const Duration(
                  seconds: 3,
                ),
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  context.read<AuthBloc>().add(
                        const AuthEvent.signedOut(),
                      );
                }
                return AlertDialog(
                  title: const Text(
                    'Successfully deleted all your data',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.read<DataOwnershipBloc>().add(
                              const DataOwnershipEvent
                                  .deleteUserDataCancelled(),
                            );
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          deleteUserDataFailure: (deleteFailureState) => AlertDialog(
            title: const Text(
              'An error occurred while deleting your data',
            ),
            content: Text(
              deleteFailureState.dataOwnershipFailure.toString(),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.read<DataOwnershipBloc>().add(
                        const DataOwnershipEvent.deleteUserDataCancelled(),
                      );
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}
