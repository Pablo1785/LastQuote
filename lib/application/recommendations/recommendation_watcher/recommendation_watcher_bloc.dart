import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation_watcher_event.dart';
part 'recommendation_watcher_state.dart';
part 'recommendation_watcher_bloc.freezed.dart';

class RecommendationWatcherBloc extends Bloc<RecommendationWatcherEvent, RecommendationWatcherState> {
  RecommendationWatcherBloc() : super(_Initial()) {
    on<RecommendationWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
