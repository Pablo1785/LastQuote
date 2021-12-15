import 'package:freezed_annotation/freezed_annotation.dart';

part 'term.freezed.dart';

@freezed
abstract class Term with _$Term {
  const Term._();

  const factory Term({
    required String idAndValue,
    required int containingDocumentsCount,
  }) = _Term;

  factory Term.empty() => Term(
        idAndValue: '',
        containingDocumentsCount: 0,
      );
}
