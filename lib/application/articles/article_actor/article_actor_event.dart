part of 'article_actor_bloc.dart';

@freezed
class ArticleActorEvent with _$ArticleActorEvent {
  const factory ArticleActorEvent.started() = _Started;
  const factory ArticleActorEvent.liked() = _Liked;
}
