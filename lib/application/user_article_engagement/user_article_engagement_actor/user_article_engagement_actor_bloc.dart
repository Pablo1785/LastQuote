import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/user_article_engagements/i_user_article_engagement_repository.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_article_engagement_actor_event.dart';
part 'user_article_engagement_actor_state.dart';
part 'user_article_engagement_actor_bloc.freezed.dart';

@injectable
class UserArticleEngagementActorBloc extends Bloc<
    UserArticleEngagementActorEvent, UserArticleEngagementActorState> {
  final IUserArticleEngagementRepository _iUserArticleEngagementRepository;

  UserArticleEngagementActorBloc(
    this._iUserArticleEngagementRepository,
  ) : super(const _Initial()) {
    on<UserArticleEngagementActorEvent>((event, emit) async {
      await event.map(
        sharePressed: (_) {},
        likePressed: (e) async {
          emit(
            const UserArticleEngagementActorState.actionInProgress(),
          );

          final updatedUserArticleEngagement = e.userArticleEngagement.copyWith(
            isLiked: !e.userArticleEngagement.isLiked,
          );

          (await _iUserArticleEngagementRepository.update(
            updatedUserArticleEngagement,
          ))
              .fold(
            (failure) => emit(
              UserArticleEngagementActorState.likeFailure(
                failure,
              ),
            ),
            (_) => emit(
              const UserArticleEngagementActorState.likeSuccess(),
            ),
          );
        },
        dismissPressed: (_) {},
        openPressed: (_) {},
      );
    });
  }
}
