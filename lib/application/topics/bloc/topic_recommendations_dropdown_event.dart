part of 'topic_recommendations_dropdown_bloc.dart';

@freezed
class TopicRecommendationsDropdownEvent
    with _$TopicRecommendationsDropdownEvent {
  const factory TopicRecommendationsDropdownEvent.showRecommendationsPressed(
    int index,
    String termId,
  ) = _ShowRecommendationsPressed;
}
