part of 'topic_details_charts_bloc.dart';

@freezed
class TopicDetailsChartsState with _$TopicDetailsChartsState {
  const factory TopicDetailsChartsState({
    required String currentEngagementType,
    required String currentTermId,
  }) = _TopicDetailsChartsState;
  factory TopicDetailsChartsState.initial() => const TopicDetailsChartsState(
        currentEngagementType: 'like',
        currentTermId: '',
      );
}
