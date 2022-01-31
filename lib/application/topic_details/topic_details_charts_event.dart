part of 'topic_details_charts_bloc.dart';

@freezed
class TopicDetailsChartsEvent with _$TopicDetailsChartsEvent {
  const factory TopicDetailsChartsEvent.engagementChanged(
    String engagementType,
  ) = _EngagementChanged;
  const factory TopicDetailsChartsEvent.termChanged(
    String termId,
  ) = _TermChanged;
}
