part of 'article_actor_bloc.dart';

@freezed
class ArticleActorState with _$ArticleActorState {
  const factory ArticleActorState.initial() = _Initial;
  const factory ArticleActorState.likeFailure(ArticleFailure articleFailure) =
      _LikeFailure;

  const factory ArticleActorState.actionInProgress() = _ActionInProgress;
}
