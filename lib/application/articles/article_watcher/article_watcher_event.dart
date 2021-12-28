part of 'article_watcher_bloc.dart';

@freezed
class ArticleWatcherEvent with _$ArticleWatcherEvent {
  const factory ArticleWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ArticleWatcherEvent.watchFromSourceStarted(
      ArticleSource articleSource) = _WatchFromSourceStarted;
  const factory ArticleWatcherEvent.watchFromSourceByIdsStarted(
    ArticleSource articleSource,
    KtList<String> articleIds,
  ) = _WatchFromSourceByIdsStarted;
  const factory ArticleWatcherEvent.watchByIdStarted(
    KtList<String> articleIds,
  ) = _WatchByIdStarted;

  const factory ArticleWatcherEvent.articlesReceived(
    Either<ArticleFailure, KtList<Article>> failureOrArticles,
  ) = _ArticlesReceived;
}
