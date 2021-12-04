part of 'article_source_picker_bloc.dart';

@freezed
class ArticleSourcePickerEvent with _$ArticleSourcePickerEvent {
  const factory ArticleSourcePickerEvent.initialLoadStarted() =
      _InitialLoadStarted;
  const factory ArticleSourcePickerEvent.articleSourcesReceived(
    Either<ArticleSourceFailure, KtList<ArticleSource>>
        failureOrEnabledArticleSources,
  ) = _ArticleSourcesReceived;
  const factory ArticleSourcePickerEvent.filterClicked(
    Either<ArticleSourceFailure, KtList<ArticleSource>>
        failureOrEnabledArticleSources,
    int pickedSourceIndex,
  ) = _FilterClicked;
  const factory ArticleSourcePickerEvent.clearFiltersClicked(
    Either<ArticleSourceFailure, KtList<ArticleSource>>
        failureOrEnabledArticleSources,
  ) = _ClearFiltersClicked;
}
