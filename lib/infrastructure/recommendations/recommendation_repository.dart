import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:flutter/services.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/recommendations/i_recommendation_repository.dart';
import '../../domain/recommendations/recommendation.dart';
import '../../domain/recommendations/recommendation_failure.dart';
import '../../injection.dart';
import 'recommendation_dtos.dart';

class RecommendationRepository implements IRecommendationRepository {
  final FirebaseFirestore _firestore;

  RecommendationRepository(this._firestore);

  @override
  Stream<Either<RecommendationFailure, KtList<Recommendation>>>
      watchAllForCurrentUser() async* {
    final userDocRef = await getIt<FirestoreHelper>().userDocument();
    yield* userDocRef
        .collection('recommendations')
        .snapshots()
        .map(
          (snapshot) => right<RecommendationFailure, KtList<Recommendation>>(
            snapshot.docs
                .map(
                  (doc) => RecommendationDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (exception, stacktrace) {
        if (exception is PlatformException &&
            exception.message!.contains('permission')) {
          return left(const RecommendationFailure.insufficientPermissions());
        } else {
          print(exception.toString());
          print(stacktrace.toString());
          return left(const RecommendationFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<RecommendationFailure, KtList<Recommendation>>>
      watchSpecificRecommendationsForCurrentUser(
    List<String> recommendationIds,
  ) async* {
    final userDocRef = await getIt<FirestoreHelper>().userDocument();
    yield* userDocRef
        .collection('recommendations')
        .where(FieldPath.documentId, whereIn: recommendationIds)
        .snapshots()
        .map(
          (snapshot) => right<RecommendationFailure, KtList<Recommendation>>(
            snapshot.docs
                .map(
                  (doc) => RecommendationDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (exception, stacktrace) {
        if (exception is PlatformException &&
            exception.message!.contains('permission')) {
          return left(const RecommendationFailure.insufficientPermissions());
        } else {
          print(exception.toString());
          print(stacktrace.toString());
          return left(const RecommendationFailure.unexpected());
        }
      },
    );
  }
}
