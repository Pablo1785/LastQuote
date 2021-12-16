import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_term_data_source_engagement_dtos.freezed.dart';
part 'user_term_data_source_engagement_dtos.g.dart'; // JsonSerializable generated code

@freezed
abstract class UserTermDataSourceEngagementDto
    implements _$UserTermDataSourceEngagementDto {
  const UserTermDataSourceEngagementDto._();

  const factory UserTermDataSourceEngagementDto({
    required String? id,
    @JsonKey(name: 'data_source_id') required String dataSourceId,
    @JsonKey(name: 'term_id') required String termId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'dismiss_count') required num dismissCount,
    @JsonKey(name: 'like_count') required num likeCount,
    @JsonKey(name: 'open_count') required num openCount,
    @JsonKey(name: 'share_count') required num shareCount,
    @JsonKey(name: 'is_initial_interest') required bool isInitialInterest,
  }) = _UserTermDataSourceEngagementDto;

  factory UserTermDataSourceEngagementDto.fromDomain(
      UserTermDataSourceEngagement userTermDataSourceEngagement) {
    return UserTermDataSourceEngagementDto(
      id: userTermDataSourceEngagement.id.getOrCrash(),
      dataSourceId: userTermDataSourceEngagement.dataSourceId.getOrCrash(),
      termId: userTermDataSourceEngagement.termId,
      userId: userTermDataSourceEngagement.userId.getOrCrash(),
      dismissCount: userTermDataSourceEngagement.dismissCount,
      likeCount: userTermDataSourceEngagement.likeCount,
      openCount: userTermDataSourceEngagement.openCount,
      shareCount: userTermDataSourceEngagement.shareCount,
      isInitialInterest: userTermDataSourceEngagement.isInitialInterest,
    );
  }

  UserTermDataSourceEngagement toDomain() {
    return UserTermDataSourceEngagement(
      id: JunctionUniqueId.fromUniqueString(id!),
      dataSourceId: UniqueId.fromUniqueString(dataSourceId),
      termId: termId,
      userId: UniqueId.fromUniqueString(userId),
      dismissCount: dismissCount.toInt(),
      likeCount: likeCount.toInt(),
      openCount: openCount.toInt(),
      shareCount: shareCount.toInt(),
      isInitialInterest: isInitialInterest,
    );
  }

  factory UserTermDataSourceEngagementDto.fromJson(Map<String, dynamic> json) =>
      _$UserTermDataSourceEngagementDtoFromJson(json);

  factory UserTermDataSourceEngagementDto.fromFirestore(DocumentSnapshot doc) {
    return UserTermDataSourceEngagementDto.fromJson(
      doc.data() as Map<String, dynamic>,
    ).copyWith(id: doc.id);
  }
}
