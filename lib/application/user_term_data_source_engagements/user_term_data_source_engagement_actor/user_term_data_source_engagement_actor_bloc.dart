import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/user_term_data_source_engagement/i_user_term_data_source_engagement_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_term_data_source_engagement_actor_event.dart';
part 'user_term_data_source_engagement_actor_state.dart';
part 'user_term_data_source_engagement_actor_bloc.freezed.dart';

@injectable
class UserTermDataSourceEngagementActorBloc extends Bloc<
    UserTermDataSourceEngagementActorEvent,
    UserTermDataSourceEngagementActorState> {
  final FirebaseFirestore _firestore;

  final IUserTermDataSourceEngagementRepository
      _iUserTermDataSourceEngagementRepository;
  UserTermDataSourceEngagementActorBloc(
    this._firestore,
    this._iUserTermDataSourceEngagementRepository,
  ) : super(const _Initial()) {
    on<UserTermDataSourceEngagementActorEvent>((event, emit) async {
      await event.map(
        batchUpdateInitialInterestsStarted: (e) async {
          emit(
            const UserTermDataSourceEngagementActorState.updateInProgress(),
          );
          await _iUserTermDataSourceEngagementRepository
              .batchUpdateInitialInterests(
            e.termInitialInterestStatuses,
          );
          emit(
            const UserTermDataSourceEngagementActorState.updateFinished(),
          );
        },
        addedElementToUpdate: (e) {
          final updatedStatuses = e.termInitialInterestStatuses;
          updatedStatuses[e.termId] = e.isInitialInterest;
          emit(
            UserTermDataSourceEngagementActorState.preparingForUpdate(
              updatedStatuses,
            ),
          );
        },
        removedElementFromUpdate: (e) {
          final updatedStatuses = e.termInitialInterestStatuses;
          updatedStatuses.remove(e.termId);
          emit(
            UserTermDataSourceEngagementActorState.preparingForUpdate(
              updatedStatuses,
            ),
          );
        },
      );
    });
  }
}
