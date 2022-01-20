import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/term_engagements/i_term_engagement_repository.dart';
import 'package:ddd/domain/term_engagements/term_engagement.dart';
import 'package:ddd/domain/term_engagements/term_engagement_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'initial_interests_event.dart';
part 'initial_interests_state.dart';
part 'initial_interests_bloc.freezed.dart';

@injectable
class InitialInterestsBloc
    extends Bloc<InitialInterestsEvent, InitialInterestsState> {
  final ITermEngagementRepository _iTermEngagementRepository;
  StreamSubscription<Either<TermEngagementFailure, KtList<TermEngagement>>>?
      _streamSubscription;

  InitialInterestsBloc(
    this._iTermEngagementRepository,
  ) : super(const _Initial()) {
    on<InitialInterestsEvent>((event, emit) async {
      await event.map(
        started: (e) async {},
        getMostPopularTermsStarted: (e) async {
          emit(
            const InitialInterestsState.loadInProgress(),
          );
          await _streamSubscription?.cancel();
          _streamSubscription = _iTermEngagementRepository
              .watchAll(
                limit: 100,
              )
              .listen(
                (failureOrTermEngagements) => add(
                  InitialInterestsEvent.interestsReceived(
                      failureOrTermEngagements),
                ),
              );
        },
        interestsReceived: (e) async {
          emit(
            e.failureOrTermEngagements.fold(
              (failure) => InitialInterestsState.loadFailure(
                failure,
              ),
              (termEngagements) => InitialInterestsState.loadSuccess(
                termEngagements,
              ),
            ),
          );
        },
      );
    });
  }
}
