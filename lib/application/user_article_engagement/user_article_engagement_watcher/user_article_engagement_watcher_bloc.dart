import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/application/articles/article_watcher/article_watcher_bloc.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/user_article_engagements/i_user_article_engagement_repository.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'user_article_engagement_watcher_event.dart';
part 'user_article_engagement_watcher_state.dart';
part 'user_article_engagement_watcher_bloc.freezed.dart';

@injectable
class UserArticleEngagementWatcherBloc extends Bloc<
    UserArticleEngagementWatcherEvent, UserArticleEngagementWatcherState> {
  final IUserArticleEngagementRepository _iUserArticleEngagementRepository;
  StreamSubscription<
          Either<UserArticleEngagementFailure,
              KtMap<String, UserArticleEngagement>>>?
      _userArticleEngagementStreamSubscription;

  UserArticleEngagementWatcherBloc(
    this._iUserArticleEngagementRepository,
  ) : super(const _Initial()) {
    on<UserArticleEngagementWatcherEvent>((event, emit) async {
      await event.map(
        watchForCurrentUserAndArticlesStarted: (e) async {
          emit(
            const UserArticleEngagementWatcherState.loadInProgress(),
          );
          await _userArticleEngagementStreamSubscription?.cancel();
          _userArticleEngagementStreamSubscription =
              _iUserArticleEngagementRepository
                  .watchForCurrentUserAndArticles(
                    e.articles,
                  )
                  .listen(
                    (failureOrUserArticleEngagements) => add(
                      UserArticleEngagementWatcherEvent
                          .userArticleEngagementsReceived(
                        failureOrUserArticleEngagements,
                      ),
                    ),
                  );
        },
        userArticleEngagementsReceived: (e) async {
          emit(
            e.failureOrUserArticleEngagements.fold(
              (failure) => UserArticleEngagementWatcherState.loadFailure(
                failure,
              ),
              (userArticleEngagements) =>
                  UserArticleEngagementWatcherState.loadSuccess(
                userArticleEngagements,
              ),
            ),
          );
        },
        watchingCancelled: (e) async {
          await _userArticleEngagementStreamSubscription?.cancel();
          emit(
            const UserArticleEngagementWatcherState.initial(),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _userArticleEngagementStreamSubscription?.cancel();
    return super.close();
  }
}
