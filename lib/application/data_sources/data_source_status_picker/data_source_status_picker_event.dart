part of 'data_source_status_picker_bloc.dart';

@freezed
class DataSourceStatusPickerEvent with _$DataSourceStatusPickerEvent {
  const factory DataSourceStatusPickerEvent.initialLoadStarted() =
      _InitialLoadStarted;
  const factory DataSourceStatusPickerEvent.dataSourcesReceived(
    Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources,
  ) = _DataSourcesReceived;
  const factory DataSourceStatusPickerEvent.statusUpdated(
    DataSourceStatus dataSourceStatus,
  ) = _StatusUpdated;
}
