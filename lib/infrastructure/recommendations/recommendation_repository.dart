import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/article_sources/article_source.dart';
import 'package:ddd/infrastructure/articles/article_dtos.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/recommendations/i_recommendation_repository.dart';
import '../../domain/recommendations/recommendation.dart';
import '../../domain/recommendations/recommendation_failure.dart';
import '../../injection.dart';
import 'recommendation_dtos.dart';

@LazySingleton(as: IRecommendationRepository)
class RecommendationRepository implements IRecommendationRepository {
  final FirebaseFirestore _firestore;

  RecommendationRepository(this._firestore);

  @override
  Stream<Either<RecommendationFailure, KtList<Recommendation>>>
      watchAllForCurrentUser() async* {
    final userDocRef = await getIt<FirestoreHelper>().userDocument();
    yield* userDocRef
        .collection('recommendations')
        .limit(10)
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
        .where(
          FieldPath.documentId,
          whereIn: recommendationIds,
        )
        .limit(10)
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
      watchFromSourceForCurrentUser(
    ArticleSource articleSource,
  ) async* {
    yield* watchAllForCurrentUser().asyncMap(
      (failureOrRecommendations) async {
        return await failureOrRecommendations.fold(
          (failure) => left(failure),
          (recommendations) async {
            return await _firestore.runTransaction(
              (transaction) async {
                var filteredRecommendations = <Recommendation>[];
                for (var recommendation in recommendations.iter) {
                  final articleRef = _firestore
                      .collection('articles')
                      .doc(recommendation.idAndValue);
                  final article = ArticleDto.fromFirestore(
                          await transaction.get(articleRef))
                      .toDomain();
                  if (article.sourceId.getOrCrash() ==
                      articleSource.id.getOrCrash()) {
                    filteredRecommendations.add(recommendation);
                  }
                }

                return right(filteredRecommendations.toImmutableList());
              },
            );
          },
        );
      },
    );
  }
}
