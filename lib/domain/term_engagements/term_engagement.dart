import 'package:freezed_annotation/freezed_annotation.dart';

part 'term_engagement.freezed.dart';

@freezed
abstract class TermEngagement with _$TermEngagement {
  const TermEngagement._();

  const factory TermEngagement({
    required String termId,
    required int initialInterestCount,
    required int dismissCount,
    required int likeCount,
    required int openCount,
    required int shareCount,
  }) = _TermEngagement;

  factory TermEngagement.empty() => const TermEngagement(
        termId: '',
        initialInterestCount: 0,
        dismissCount: 0,
        likeCount: 0,
        openCount: 0,
        shareCount: 0,
      );
}
