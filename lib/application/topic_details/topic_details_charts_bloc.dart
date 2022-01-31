import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'topic_details_charts_event.dart';
part 'topic_details_charts_state.dart';
part 'topic_details_charts_bloc.freezed.dart';

@injectable
class TopicDetailsChartsBloc
    extends Bloc<TopicDetailsChartsEvent, TopicDetailsChartsState> {
  TopicDetailsChartsBloc() : super(TopicDetailsChartsState.initial()) {
    on<TopicDetailsChartsEvent>(
      (event, emit) {
        event.map(
          engagementChanged: (e) {
            emit(
              state.copyWith(
                currentEngagementType: e.engagementType,
              ),
            );
          },
          termChanged: (e) {
            emit(
              state.copyWith(
                currentTermId: e.termId,
              ),
            );
          },
        );
      },
    );
  }
}
