import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../application/initial_interests/initial_interests_bloc.dart';
import '../../../application/initial_interests/interests_picker/initial_interests_picker_bloc.dart';
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
          loadSuccess: (loadSuccessState) {
            final termInitialInterestStatuses = <String, bool>{};
            loadSuccessState.termEngagements.iter.forEach((element) {
              termInitialInterestStatuses[element.termId] = false;
            });
            final initialInterestsPickerBloc =
                context.read<InitialInterestsPickerBloc>();
            initialInterestsPickerBloc.add(
              InitialInterestsPickerEvent.termInitialInterestStatusesLoaded(
                termInitialInterestStatuses,
              ),
            );
            return BlocConsumer<InitialInterestsPickerBloc,
                InitialInterestsPickerState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return Wrap(
                  children: state.termInitialInterestStatuses.entries.map(
                    (termStatus) {
                      final currTermId = termStatus.key;
                      final currIsInitialInterest = termStatus.value;
                      return FilterChip(
                        selected: currIsInitialInterest,
                        label: Text(
                          currTermId, // term ID
                        ),
                        onSelected: (_) {
                          initialInterestsPickerBloc.add(
                            InitialInterestsPickerEvent.termPressed(
                              currTermId,
                            ),
                          );
                        },
                      );
                    },
                  ).toList(),
                );
              },
            );
          },
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
