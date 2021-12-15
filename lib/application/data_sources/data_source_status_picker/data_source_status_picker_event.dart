part of 'data_source_status_picker_bloc.dart';

@freezed
class DataSourceStatusPickerEvent with _$DataSourceStatusPickerEvent {
  const factory DataSourceStatusPickerEvent.initialLoadStarted() =
      _InitialLoadStarted;
  const factory DataSourceStatusPickerEvent.dataSourcesReceived(
    Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources,
  ) = _DataSourcesReceived;
  const factory DataSourceStatusPickerEvent.loadStartedStatuses(
    KtList<DataSource> dataSources,
  ) = _LoadStartedStatuses;
  const factory DataSourceStatusPickerEvent.dataSourceStatusesReceived(
    KtList<DataSource> dataSources,
    Either<DataSourceFailure, KtList<DataSourceStatus>>
        failureOrDataSourceStatuses,
  ) = _DataSourceStatusesReceived;
  const factory DataSourceStatusPickerEvent.statusUpdated(
    KtList<DataSource> dataSources,
    KtList<DataSourceStatus> dataSourceStatuses,
    DataSourceStatus dataSourceStatus,
  ) = _StatusUpdated;
}
