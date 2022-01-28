import 'package:bloc/bloc.dart';
import 'package:ddd/domain/data_ownership/data_ownership_failures.dart';
import 'package:ddd/domain/data_ownership/i_data_ownership_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'data_ownership_event.dart';
part 'data_ownership_state.dart';
part 'data_ownership_bloc.freezed.dart';

@injectable
class DataOwnershipBloc extends Bloc<DataOwnershipEvent, DataOwnershipState> {
  final IDataOwnershipFacade _iDataOwnershipFacade;

  DataOwnershipBloc(
    this._iDataOwnershipFacade,
  ) : super(const _Initial()) {
    on<DataOwnershipEvent>((event, emit) async {
      await event.map(
        deleteUserDataRequested: (_) {
          emit(
            const DataOwnershipState.deleteUserDataWaitingForConfirmation(),
          );
        },
        deleteUserDataConfirmed: (_) async {
          emit(
            const DataOwnershipState.deleteUserDataInProgress(),
          );
          final failureOrSuccess = await _iDataOwnershipFacade.deleteUserData();
          emit(
            failureOrSuccess.fold(
              (failure) => DataOwnershipState.deleteUserDataFailure(
                failure,
              ),
              (_) => const DataOwnershipState.deleteUserDataSuccess(),
            ),
          );
        },
        deleteUserDataCancelled: (_) {
          emit(
            const DataOwnershipState.deleteUserDataFailure(
              DataOwnershipFailure.cancelledByUser(),
            ),
          );
          emit(
            const DataOwnershipState.initial(),
          );
        },
      );
    });
  }
}
