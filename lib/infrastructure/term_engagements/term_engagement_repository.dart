import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/term_engagements/i_term_engagement_repository.dart';
import '../../domain/term_engagements/term_engagement.dart';
import '../../domain/term_engagements/term_engagement_failure.dart';
import 'term_engagement_dtos.dart';

@LazySingleton(as: ITermEngagementRepository)
class TermEngagementRepository implements ITermEngagementRepository {
  final FirebaseFirestore _firestore;

  TermEngagementRepository(this._firestore);

  @override
  Stream<Either<TermEngagementFailure, KtList<TermEngagement>>> watchAll({
    int limit = 10,
  }) async* {
    yield* _firestore
        .collection('term_engagement')
        .orderBy('initial_interest_count', descending: true)
        .orderBy('share_count', descending: true)
        .orderBy('like_count', descending: true)
        .orderBy('open_count', descending: true)
        .orderBy('dismiss_count', descending: false)
        .limit(limit)
        .snapshots()
        .map(
          (snapshot) => right<TermEngagementFailure, KtList<TermEngagement>>(
            snapshot.docs
                .map(
                  (doc) => TermEngagementDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (exception, stacktrace) {
        if (exception is PlatformException &&
            exception.message!.contains('permission')) {
          return left(const TermEngagementFailure.insufficientPermissions());
        } else {
          print(exception.toString());
          print(stacktrace.toString());
          return left(const TermEngagementFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<TermEngagementFailure, KtList<TermEngagement>>>
      watchSpecificTerms(
    List<String> termIds,
  ) async* {
    yield* _firestore
        .collection('term_engagement')
        .where(FieldPath.documentId, whereIn: termIds)
        .orderBy('initial_interest_count', descending: true)
        .orderBy('share_count', descending: true)
        .orderBy('like_count', descending: true)
        .orderBy('open_count', descending: true)
        .orderBy('dismiss_count', descending: false)
        .snapshots()
        .map(
          (snapshot) => right<TermEngagementFailure, KtList<TermEngagement>>(
            snapshot.docs
                .map(
                  (doc) => TermEngagementDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (exception, stacktrace) {
        if (exception is PlatformException &&
            exception.message!.contains('permission')) {
          return left(const TermEngagementFailure.insufficientPermissions());
        } else {
          print(exception.toString());
          print(stacktrace.toString());
          return left(const TermEngagementFailure.unexpected());
        }
      },
    );
  }
}
