import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/terms/term.dart';
import 'package:ddd/domain/user_term_data_source_engagement/i_user_term_data_source_engagement_repository.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'user_term_data_source_engagement_watcher_event.dart';
part 'user_term_data_source_engagement_watcher_state.dart';
part 'user_term_data_source_engagement_watcher_bloc.freezed.dart';

@injectable
class UserTermDataSourceEngagementWatcherBloc extends Bloc<
    UserTermDataSourceEngagementWatcherEvent,
    UserTermDataSourceEngagementWatcherState> {
  final IUserTermDataSourceEngagementRepository
      _iUserTermDataSourceEngagementRepository;

  StreamSubscription<
          Either<UserTermDataSourceEngagementFailure,
              KtList<UserTermDataSourceEngagement>>>?
      _userTermDataSourceEngagementStreamSubscription;

  UserTermDataSourceEngagementWatcherBloc(
    this._iUserTermDataSourceEngagementRepository,
  ) : super(const _Initial()) {
    on<UserTermDataSourceEngagementWatcherEvent>(
      (event, emit) async {
        await event.map(
          watchMostPopularTermsforCurrentUserStarted: (e) async {
            emit(
              const UserTermDataSourceEngagementWatcherState.loadInProgress(),
            );

            await _userTermDataSourceEngagementStreamSubscription?.cancel();
            _userTermDataSourceEngagementStreamSubscription =
                _iUserTermDataSourceEngagementRepository
                    .watchMostPopularTermsForCurrentUser(limit: e.limit)
                    .listen(
                      (failureOrUserTermDataSourceEngagements) => add(
                        UserTermDataSourceEngagementWatcherEvent
                            .userTermDataSourceEngagementsReceived(
                          failureOrUserTermDataSourceEngagements,
                        ),
                      ),
                    );
          },
          watchForCurrentUserTermsAndDataSourceStarted: (e) async {
            emit(
              const UserTermDataSourceEngagementWatcherState.loadInProgress(),
            );

            await _userTermDataSourceEngagementStreamSubscription?.cancel();
            _userTermDataSourceEngagementStreamSubscription =
                _iUserTermDataSourceEngagementRepository
                    .watchForCurrentUserTermsAndDataSource(
                      e.termIds,
                      e.dataSourceId,
                    )
                    .listen(
                      (failureOrUserTermDataSourceEngagements) => add(
                        UserTermDataSourceEngagementWatcherEvent
                            .userTermDataSourceEngagementsReceived(
                          failureOrUserTermDataSourceEngagements,
                        ),
                      ),
                    );
          },
          userTermDataSourceEngagementsReceived: (e) async {
            emit(
              e.failureOrUserTermDataSourceEngagements.fold(
                (failure) =>
                    UserTermDataSourceEngagementWatcherState.loadFailure(
                  failure,
                ),
                (userTermDataSourceEngagements) =>
                    UserTermDataSourceEngagementWatcherState.loadSuccess(
                  userTermDataSourceEngagements,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
