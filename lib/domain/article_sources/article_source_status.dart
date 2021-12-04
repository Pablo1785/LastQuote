import '../core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_source_status.freezed.dart';

@freezed
abstract class ArticleSourceStatus with _$ArticleSourceStatus {
  const factory ArticleSourceStatus({
    required UniqueId id,
    required UniqueId articleSourceId,
    required UniqueId userId,
    required bool isEnabled,
  }) = _ArticleSourceStatus;
}
