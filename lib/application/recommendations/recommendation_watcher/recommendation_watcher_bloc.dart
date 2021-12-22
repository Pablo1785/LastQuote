import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/recommendations/i_recommendation_repository.dart';
import 'package:ddd/domain/recommendations/recommendation.dart';
import 'package:ddd/domain/recommendations/recommendation_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'recommendation_watcher_event.dart';
part 'recommendation_watcher_state.dart';
part 'recommendation_watcher_bloc.freezed.dart';

@injectable
class RecommendationWatcherBloc
    extends Bloc<RecommendationWatcherEvent, RecommendationWatcherState> {
  final IRecommendationRepository _iRecommendationRepository;

  StreamSubscription<Either<RecommendationFailure, KtList<Recommendation>>>?
      _recommendationStreamSubscription;
  RecommendationWatcherBloc(
    this._iRecommendationRepository,
  ) : super(const _Initial()) {
    on<RecommendationWatcherEvent>((event, emit) async {
      await event.map(
        watchAllForCurrentUserStarted: (e) async {
          emit(
            const RecommendationWatcherState.loadInProgress(),
          );
          await _recommendationStreamSubscription?.cancel();
          _recommendationStreamSubscription =
              _iRecommendationRepository.watchAllForCurrentUser().listen(
                    (failureOrRecommendations) => add(
                      RecommendationWatcherEvent.recommendationsReceived(
                        failureOrRecommendations,
                      ),
                    ),
                  );
        },
        watchSpecificRecommendationsForCurrentUserStarted: (e) async {
          emit(
            const RecommendationWatcherState.loadInProgress(),
          );
          await _recommendationStreamSubscription?.cancel();
          _recommendationStreamSubscription = _iRecommendationRepository
              .watchSpecificRecommendationsForCurrentUser(
                e.recommendationIds,
              )
              .listen(
                (failureOrRecommendations) => add(
                  RecommendationWatcherEvent.recommendationsReceived(
                    failureOrRecommendations,
                  ),
                ),
              );
        },
        recommendationsReceived: (e) async {
          emit(
            e.failureOrRecommendations.fold(
              (failure) => RecommendationWatcherState.loadFailure(
                failure,
              ),
              (recommendations) => RecommendationWatcherState.loadSuccess(
                recommendations,
              ),
            ),
          );
        },
      );
    });
  }
}
