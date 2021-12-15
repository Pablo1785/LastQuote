part of 'data_source_status_picker_bloc.dart';

@freezed
class DataSourceStatusPickerState with _$DataSourceStatusPickerState {
  const factory DataSourceStatusPickerState.initial() = _Initial;
  const factory DataSourceStatusPickerState.loadInProgressSources() =
      _LoadInProgressSources;
  const factory DataSourceStatusPickerState.loadSuccessSources(
    KtList<DataSource> dataSources,
  ) = _LoadSuccessSources;
  const factory DataSourceStatusPickerState.loadFailureSources(
    DataSourceFailure dataSourceFailure,
  ) = _LoadFailureSources;
  const factory DataSourceStatusPickerState.loadInProgressStatuses() =
      _LoadInProgressStatuses;
  const factory DataSourceStatusPickerState.loadSuccessAll(
    KtList<DataSourceStatus> dataSourceStatuses,
    KtList<DataSource> dataSources,
  ) = _LoadSuccessAll;
  const factory DataSourceStatusPickerState.loadFailureStatuses(
    DataSourceFailure dataSourceFailure,
  ) = _LoadFailureStatuses;
}
