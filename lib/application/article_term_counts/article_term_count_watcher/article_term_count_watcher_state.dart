part of 'article_term_count_watcher_bloc.dart';

@freezed
class ArticleTermCountWatcherState with _$ArticleTermCountWatcherState {
  const factory ArticleTermCountWatcherState.initial() = _Initial;
  const factory ArticleTermCountWatcherState.loadInProgress() = _LoadInProgress;
  const factory ArticleTermCountWatcherState.loadSuccess(
    KtList<ArticleTermCount> articleTermCounts,
  ) = _LoadSuccess;
  const factory ArticleTermCountWatcherState.loadFailure(
    ArticleTermCountFailure articleTermCountFailure,
  ) = _LoadFailure;
}
