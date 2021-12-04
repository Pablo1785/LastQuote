part of 'article_source_picker_bloc.dart';

@freezed
class ArticleSourcePickerState with _$ArticleSourcePickerState {
  const factory ArticleSourcePickerState.initial() = _Initial;
  const factory ArticleSourcePickerState.loadInProgress() = _LoadInProgress;
  const factory ArticleSourcePickerState.loadSuccess(
    KtList<ArticleSource> articleSources,
  ) = _LoadSuccess;
  const factory ArticleSourcePickerState.loadFailure(
    ArticleSourceFailure articleSourceFailure,
  ) = _LoadFailure;

  const factory ArticleSourcePickerState.filterInProgress() = _FilterInProgress;
  const factory ArticleSourcePickerState.filterSuccess(
    KtList<ArticleSource> articleSources,
    int pickedSourceIndex,
  ) = _Filtered;
  const factory ArticleSourcePickerState.filterFailure(
    ArticleSourceFailure articleSourceFailure,
  ) = _FilterFailure;
}
