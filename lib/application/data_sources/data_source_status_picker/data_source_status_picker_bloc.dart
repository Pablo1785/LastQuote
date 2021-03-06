import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/data_sources/data_source_failure.dart';
import 'package:ddd/domain/data_sources/data_source_status.dart';
import 'package:ddd/domain/data_sources/i_data_source_repository.dart';
import 'package:ddd/domain/data_sources/i_data_source_status_repository.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../injection.dart';

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
            await e.failureOrDataSources.fold(
              (failure) => DataSourceStatusPickerState.loadFailureSources(
                failure,
              ),
              (dataSources) async {
                add(
                  DataSourceStatusPickerEvent.loadStartedStatuses(dataSources),
                );
                return DataSourceStatusPickerState.loadSuccessSources(
                  dataSources,
                );
              },
            ),
          );
        },
        loadStartedStatuses: (e) async {
          emit(
            DataSourceStatusPickerState.loadInProgressStatuses(
              e.dataSources,
            ),
          );

          final failureOrDataSourceStatuses =
              await _iDataSourceStatusRepository.getForCurrentUser();

          add(
            DataSourceStatusPickerEvent.dataSourceStatusesReceived(
              e.dataSources,
              failureOrDataSourceStatuses,
            ),
          );
        },
        dataSourceStatusesReceived: (e) async {
          final newDataSourceStatuses =
              await e.failureOrDataSourceStatuses.fold(
            (l) => Future.value(
              const KtList<DataSourceStatus>.empty(),
            ),
            (dataSourceStatuses) =>
                getIt<FirestoreHelper>().userDocument().then(
                      (userDocRef) => _iDataSourceStatusRepository
                          .createMissingJunctionEntities(
                        dataSources: e.dataSources,
                        dataSourceStatuses: dataSourceStatuses,
                        userId: userDocRef.id,
                      ),
                    ),
          );

          // Create any missing junction
          if (newDataSourceStatuses.size > 0) {
            final failureOrUnit =
                await _iDataSourceStatusRepository.batchCreate(
              newDataSourceStatuses,
            );

            // If missing junction creation failed, the entire junction loading mechanism should fail
            if (failureOrUnit.isLeft()) {
              failureOrUnit.leftMap(
                (failure) => emit(
                  DataSourceStatusPickerState.loadFailureStatuses(
                    e.dataSources,
                    failure,
                  ),
                ),
              );
              return;
            }
          }

          // After successfully creating junctions/skipping that step
          e.failureOrDataSourceStatuses.fold(
            (failure) => emit(
              DataSourceStatusPickerState.loadFailureStatuses(
                e.dataSources,
                failure,
              ),
            ),
            (dataSourceStatuses) {
              var allDataSourceStatuses = dataSourceStatuses.toMutableList();
              allDataSourceStatuses.addAll(newDataSourceStatuses);
              emit(
                DataSourceStatusPickerState.loadSuccessAll(
                  allDataSourceStatuses.toList(),
                  e.dataSources,
                ),
              );
            },
          );
        },
        statusUpdated: (e) async {
          emit(
            DataSourceStatusPickerState.updateInProgressStatuses(
              e.dataSources,
              e.dataSourceStatuses,
            ),
          );

          final failureOrUnit = await _iDataSourceStatusRepository.update(
            e.dataSourceStatus,
          );

          failureOrUnit.fold(
            (failure) {
              emit(
                DataSourceStatusPickerState.updateFailureStatuses(
                  e.dataSources,
                  e.dataSourceStatuses,
                  failure,
                ),
              );
            },
            (_) {
              add(
                DataSourceStatusPickerEvent.loadStartedStatuses(e.dataSources),
              );
            },
          );
        },
      );
    });
  }
}
