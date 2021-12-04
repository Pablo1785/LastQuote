part of 'article_source_watcher_bloc.dart';

@freezed
class ArticleSourceWatcherEvent with _$ArticleSourceWatcherEvent {
  const factory ArticleSourceWatcherEvent.started() = _Started;
}