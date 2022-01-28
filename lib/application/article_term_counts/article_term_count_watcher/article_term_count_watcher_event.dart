part of 'article_term_count_watcher_bloc.dart';

@freezed
class ArticleTermCountWatcherEvent with _$ArticleTermCountWatcherEvent {
  const factory ArticleTermCountWatcherEvent.watchingCancelled() =
      _WatchingCancelled;
  const factory ArticleTermCountWatcherEvent.getForEachArticleStarted(
    KtList<Article> articles,
    bool descending,
    int limitPerArticle,
  ) = _GetForEachArticleStarted;
  const factory ArticleTermCountWatcherEvent.watchForArticlesStarted(
    KtList<Article> articles,
  ) = _WatchForArticlesStarted;
  const factory ArticleTermCountWatcherEvent.articleTermCountsReceived(
    Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
        failureOrArticleTermCounts,
  ) = _ArticleTermCountsReceived;
}
