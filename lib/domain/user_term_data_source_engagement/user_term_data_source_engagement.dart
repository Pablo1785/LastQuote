import 'package:ddd/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_term_data_source_engagement.freezed.dart';

@freezed
abstract class UserTermDataSourceEngagement
    with _$UserTermDataSourceEngagement {
  const UserTermDataSourceEngagement._();

  const factory UserTermDataSourceEngagement({
    required JunctionUniqueId id,
    required UniqueId dataSourceId,
    required String termId,
    required UniqueId userId,
    required int dismissCount,
    required int likeCount,
    required int shareCount,
    required int openCount,
    required bool isInitialInterest,
  }) = _UserTermDataSourceEngagement;

  factory UserTermDataSourceEngagement.empty() {
    final dataSourceId = UniqueId();
    final termId = UniqueId().getOrCrash();
    final userId = UniqueId();

    final junctionId = JunctionUniqueId(
      [
        dataSourceId.getOrCrash(),
        termId,
        userId.getOrCrash(),
      ],
    );
    return UserTermDataSourceEngagement(
      id: junctionId,
      dataSourceId: dataSourceId,
      termId: termId,
      userId: userId,
      dismissCount: 0,
      likeCount: 0,
      shareCount: 0,
      openCount: 0,
      isInitialInterest: false,
    );
  }
}
