import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/terms/i_term_repository.dart';
import '../../domain/terms/term.dart';
import '../../domain/terms/term_failure.dart';
import 'term_dtos.dart';

class TermRepository implements ITermRepository {
  final FirebaseFirestore _firestore;

  TermRepository(this._firestore);

  @override
  Stream<Either<TermFailure, KtList<Term>>> watchAll() async* {
    yield* _firestore
        .collection('terms')
        .snapshots()
        .map(
          (snapshot) => right<TermFailure, KtList<Term>>(
            snapshot.docs
                .map(
                  (doc) => TermDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (exception, stacktrace) {
        if (exception is PlatformException &&
            exception.message!.contains('permission')) {
          return left(const TermFailure.insufficientPermissions());
        } else {
          print(exception.toString());
          print(stacktrace.toString());
          return left(const TermFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<TermFailure, KtList<Term>>> watchSpecificTerms(
    List<String> termIds,
  ) async* {
    yield* _firestore
        .collection('terms')
        .where(FieldPath.documentId, whereIn: termIds)
        .snapshots()
        .map(
          (snapshot) => right<TermFailure, KtList<Term>>(
            snapshot.docs
                .map(
                  (doc) => TermDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (exception, stacktrace) {
        if (exception is PlatformException &&
            exception.message!.contains('permission')) {
          return left(const TermFailure.insufficientPermissions());
        } else {
          print(exception.toString());
          print(stacktrace.toString());
          return left(const TermFailure.unexpected());
        }
      },
    );
  }
}
