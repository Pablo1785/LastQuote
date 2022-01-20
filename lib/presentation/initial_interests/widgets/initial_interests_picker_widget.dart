import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_actor/user_term_data_source_engagement_actor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../application/initial_interests/initial_interests_bloc.dart';
import '../../core/quotes_logo.dart';

class InitialInterestsPickerWidget extends StatelessWidget {
  const InitialInterestsPickerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InitialInterestsBloc, InitialInterestsState>(
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
          loadSuccess: (loadSuccessState) => Wrap(
            children: loadSuccessState.termEngagements.iter
                .map(
                  (termEngagement) => ActionChip(
                    label: Text(
                      termEngagement.termId,
                    ),
                    onPressed: () {
                      context.read<UserTermDataSourceEngagementActorBloc>().add(UserTermDataSourceEngagementActorEvent.addedElementToUpdate(termEngagement.termId, true, termInitialInterestStatuses))
                    },
                  ),
                )
                .toList(),
          ),
          loadFailure: (loadFailureState) => Center(
            child: Text(
              loadFailureState.termEngagementFailure.toString(),
            ),
          ),
        );
      },
    );
  }
}
