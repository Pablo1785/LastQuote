import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/term_engagements/term_engagement.dart';
import 'package:ddd/infrastructure/core/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'term_engagement_dtos.freezed.dart';

part 'term_engagement_dtos.g.dart'; // JsonSerializable generated code

@freezed
abstract class TermEngagementDto implements _$TermEngagementDto {
  const TermEngagementDto._();

  const factory TermEngagementDto({
    required String? id,
    @JsonKey(name: "term_id") required String termId,
    @JsonKey(name: "dismiss_count") required num dismissCount,
    @JsonKey(name: "like_count") required num likeCount,
    @JsonKey(name: "share_count") required num shareCount,
    @JsonKey(name: "open_count") required num openCount,
    @JsonKey(name: "initial_interest_count") required num initialInterestCount,
  }) = _TermEngagementDto;

  factory TermEngagementDto.fromDomain(TermEngagement termEngagement) {
    return TermEngagementDto(
      id: termEngagement.termId,
      termId: termEngagement.termId,
      dismissCount: termEngagement.dismissCount,
      likeCount: termEngagement.likeCount,
      shareCount: termEngagement.shareCount,
      openCount: termEngagement.openCount,
      initialInterestCount: termEngagement.initialInterestCount,
    );
  }

  TermEngagement toDomain() {
    return TermEngagement(
      termId: termId,
      dismissCount: dismissCount.toInt(),
      likeCount: likeCount.toInt(),
      shareCount: shareCount.toInt(),
      openCount: openCount.toInt(),
      initialInterestCount: initialInterestCount.toInt(),
    );
  }

  factory TermEngagementDto.fromJson(Map<String, dynamic> json) =>
      _$TermEngagementDtoFromJson(json);

  factory TermEngagementDto.fromFirestore(DocumentSnapshot doc) {
    return TermEngagementDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
