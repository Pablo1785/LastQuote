import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/data_sources/data_source_failure.dart';
import 'package:ddd/domain/data_sources/data_source_status.dart';
import 'package:ddd/domain/data_sources/i_data_source_repository.dart';
import 'package:ddd/domain/data_sources/i_data_source_status_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'data_source_status_picker_event.dart';
part 'data_source_status_picker_state.dart';
part 'data_source_status_picker_bloc.freezed.dart';

@injectable
class DataSourceStatusPickerBloc
    extends Bloc<DataSourceStatusPickerEvent, DataSourceStatusPickerState> {
  final IDataSourceRepository _iDataSourceRepository;
  final IDataSourceStatusRepository _iDataSourceStatusRepository;
  DataSourceStatusPickerBloc(
      this._iDataSourceRepository, this._iDataSourceStatusRepository)
      : super(const _Initial()) {
    on<DataSourceStatusPickerEvent>((event, emit) async {
      await event.map(
        initialLoadStarted: (e) async {
          emit(
            const DataSourceStatusPickerState.loadInProgressSources(),
          );
          final failureOrDataSources = await _iDataSourceRepository.getAll();

          add(
            DataSourceStatusPickerEvent.dataSourcesReceived(
              failureOrDataSources,
            ),
          );
        },
        dataSourcesReceived: (e) async {
          emit(
            e.failureOrDataSources.fold(
              (failure) => DataSourceStatusPickerState.loadFailureSources(
                failure,
              ),
              (dataSources) => DataSourceStatusPickerState.loadSuccessSources(
                dataSources,
              ),
            ),
          );

          // if successfully loaded dataSources start loading their statuses
          if (e.failureOrDataSources.isRight()) {
            emit(
              const DataSourceStatusPickerState.loadInProgressStatuses(),
            );

            final failureOrDataSourceStatuses =
                await _iDataSourceStatusRepository.getForCurrentUser();

            emit(
              failureOrDataSourceStatuses.fold(
                (failure) => DataSourceStatusPickerState.loadFailureStatuses(
                  failure,
                ),
                (dataSourceStatuses) =>
                    DataSourceStatusPickerState.loadSuccessAll(
                  dataSourceStatuses,
                  e.failureOrDataSources.getOrElse(
                    () => const KtList.empty(),
                  ),
                ),
              ),
            );
          }
        },
        statusUpdated: (e) {
          emit(
            const DataSourceStatusPickerState.updateInProgressStatuses(),
          );
        },
      );
    });
  }
}
