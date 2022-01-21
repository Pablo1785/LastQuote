import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/term_engagements/term_engagement_failure.dart';
import 'package:ddd/domain/user_term_data_source_engagement/i_user_term_data_source_engagement_repository.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'initial_interests_picker_event.dart';
part 'initial_interests_picker_state.dart';
part 'initial_interests_picker_bloc.freezed.dart';

@injectable
class InitialInterestsPickerBloc
    extends Bloc<InitialInterestsPickerEvent, InitialInterestsPickerState> {
  final IUserTermDataSourceEngagementRepository
      _iUserTermDataSourceEngagementRepository;

  InitialInterestsPickerBloc(this._iUserTermDataSourceEngagementRepository)
      : super(
          InitialInterestsPickerState.initial(
            termInitialInterestStatuses: {},
          ),
        ) {
    on<InitialInterestsPickerEvent>((event, emit) async {
      await event.map(
        termInitialInterestStatusesLoaded: (e) {
          emit(
            state.copyWith(
              termInitialInterestStatuses: e.termInitialInterestStatuses,
            ),
          );
        },
        termPressed: (e) {
          // Create new, updated map, copy all data to it
          final updatedTermInitialInterestStatuses = <String, bool>{};
          updatedTermInitialInterestStatuses
              .addAll(state.termInitialInterestStatuses);

          // Update appropriate key
          if (updatedTermInitialInterestStatuses.containsKey(e.termId)) {
            updatedTermInitialInterestStatuses[e.termId] =
                !updatedTermInitialInterestStatuses[e.termId]!;
          } else {
            updatedTermInitialInterestStatuses[e.termId] = true;
          }
          emit(
            state.copyWith(
              termInitialInterestStatuses: updatedTermInitialInterestStatuses,
              failureOrUpdateSuccessfulOption: none(),
            ),
          );
        },
        confirmPressed: (e) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              failureOrUpdateSuccessfulOption: none(),
            ),
          );
          final failureOrUnit = await _iUserTermDataSourceEngagementRepository
              .batchUpdateInitialInterests(
            state.termInitialInterestStatuses,
          );
          emit(
            state.copyWith(
              isSubmitting: false,
              failureOrUpdateSuccessfulOption: some(failureOrUnit),
            ),
          );
        },
        cancelPressed: (e) {
          emit(
            state.copyWith(
              isSubmitting: false,
              failureOrUpdateSuccessfulOption: none(),
            ),
          );
        },
      );
    });
  }
}
