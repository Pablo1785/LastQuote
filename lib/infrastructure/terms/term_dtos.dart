import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/terms/term.dart';
import 'package:ddd/infrastructure/core/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'term_dtos.freezed.dart';

part 'term_dtos.g.dart'; // JsonSerializable generated code

@freezed
abstract class TermDto implements _$TermDto {
  const TermDto._();

  const factory TermDto({
    required String? id,
    @JsonKey(name: 'global_term_importance') required num globalTermImportance,
  }) = _TermDto;

  factory TermDto.fromDomain(Term term) {
    return TermDto(
      id: term.idAndValue,
      globalTermImportance: term.globalTermImportance,
    );
  }

  Term toDomain() {
    return Term(
      idAndValue: id!,
      globalTermImportance: globalTermImportance.toDouble(),
    );
  }

  factory TermDto.fromJson(Map<String, dynamic> json) =>
      _$TermDtoFromJson(json);

  factory TermDto.fromFirestore(DocumentSnapshot doc) {
    return TermDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
