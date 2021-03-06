import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/terms/term.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/user_term_data_source_engagement/i_user_term_data_source_engagement_repository.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:ddd/infrastructure/user_term_data_source_engagements/user_term_data_source_engagement_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement_failure.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:rxdart/src/transformers/on_error_resume.dart';

import '../../injection.dart';

@LazySingleton(as: IUserTermDataSourceEngagementRepository)
class UserTermDataSourceEngagementRepository
    implements IUserTermDataSourceEngagementRepository {
  final FirebaseFirestore _firestore;

  UserTermDataSourceEngagementRepository(this._firestore);

  KtList<UserTermDataSourceEngagement> _createMissingJunctionEntities({
    required KtList<String> termIds,
    required String dataSourceId,
    required String userId,
    required KtList<String> termIdsWithExistingJunctions,
  }) {
    return termIds
        .asList()
        .where(
          (termId) => !termIdsWithExistingJunctions.contains(termId),
        )
        .map(
          (termId) => UserTermDataSourceEngagement.empty().copyWith(
            dataSourceId: UniqueId.fromUniqueString(
              dataSourceId,
            ),
            termId: termId,
            userId: UniqueId.fromUniqueString(
              userId,
            ),
            id: JunctionUniqueId(
              [
                dataSourceId,
                termId,
                userId,
              ],
            ),
          ),
        )
        .toImmutableList();
  }

  Future<
          Either<UserTermDataSourceEngagementFailure,
              KtList<UserTermDataSourceEngagement>>>
      _parseJunctionsAndHandleMissing({
    required QuerySnapshot<Map<String, dynamic>> snapshot,
    required KtList<String> termIds,
    required String dataSourceId,
    required String userId,
  }) async {
    KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements =
        snapshot.docs
            .where(
              (doc) => doc.exists,
            )
            .map(
              (doc) =>
                  UserTermDataSourceEngagementDto.fromFirestore(doc).toDomain(),
            )
            .toImmutableList();

    // get loaded terms that do not have a junction with current user
    final newUserTermDataSourceEngagements = _createMissingJunctionEntities(
      termIds: termIds,
      dataSourceId: dataSourceId,
      userId: userId,
      termIdsWithExistingJunctions: userTermDataSourceEngagements
          .asList()
          .map((junction) => junction.termId)
          .toImmutableList(),
    );

    // create missing terms
    final failuresOrSuccesses = await Future.wait(
      newUserTermDataSourceEngagements.asList().map(
            (e) => create(e),
          ),
    );

    // check if all creates successful
    final someFailureOrUnit = failuresOrSuccesses.firstWhere(
      (element) => element.isLeft(),
      orElse: () => right<UserTermDataSourceEngagementFailure, Unit>(unit),
    );

    // if any create unsuccessful, pass the creation failure as stream output
    return someFailureOrUnit.fold(
      (failure) => left<UserTermDataSourceEngagementFailure,
          KtList<UserTermDataSourceEngagement>>(failure),
      (_) {
        userTermDataSourceEngagements
            .asList()
            .addAll(newUserTermDataSourceEngagements.asList());
        return right(userTermDataSourceEngagements);
      },
    );
  }

  Either<UserTermDataSourceEngagementFailure, T> _handleException<T>(
    Object exception,
    StackTrace stackTrace,
  ) {
    if (exception is FirebaseException &&
        exception.message!.contains('permission')) {
      return left(
          const UserTermDataSourceEngagementFailure.insufficientPermissions());
    } else if (exception is FirebaseException &&
        exception.message!.contains('found')) {
      return left(const UserTermDataSourceEngagementFailure.documentNotFound());
    } else if (exception is FirebaseException &&
        exception.message!.contains('empty')) {
      return left(const UserTermDataSourceEngagementFailure.noEngagement());
    } else {
      print(exception.toString());
      print(stackTrace.toString());
      return left(const UserTermDataSourceEngagementFailure.unexpected());
    }
  }

  @override
  Future<Either<UserTermDataSourceEngagementFailure, Unit>> create(
      UserTermDataSourceEngagement userTermDataSourceEngagement) async {
    try {
      final userTermDataSourceEngagementDto =
          UserTermDataSourceEngagementDto.fromDomain(
        userTermDataSourceEngagement,
      );

      final userTermDataSourceEngagementDtoJson =
          userTermDataSourceEngagementDto.toJson();
      await _firestore
          .collection('user_term_data_source_engagement')
          .doc(userTermDataSourceEngagementDto.id)
          .set(
            userTermDataSourceEngagementDtoJson,
          );
      return right(unit);
    } on PlatformException catch (e, stacktrace) {
      return _handleException(e, stacktrace);
    }
  }

  @override
  Future<Either<UserTermDataSourceEngagementFailure, Unit>> update(
      UserTermDataSourceEngagement userTermDataSourceEngagement) async {
    try {
      final userTermDataSourceEngagementDto =
          UserTermDataSourceEngagementDto.fromDomain(
        userTermDataSourceEngagement,
      );

      final userTermDataSourceEngagementDtoJson =
          userTermDataSourceEngagementDto.toJson();
      await _firestore
          .collection('user_term_data_source_engagement')
          .doc(userTermDataSourceEngagementDto.id)
          .update(
            userTermDataSourceEngagementDtoJson,
          );
      return right(unit);
    } on PlatformException catch (e, stacktrace) {
      return _handleException(e, stacktrace);
    }
  }

  @override
  Future<
      Either<UserTermDataSourceEngagementFailure,
          UserTermDataSourceEngagement>> get(
      UserTermDataSourceEngagement userTermDataSourceEngagement) async {
    try {
      final userTermDataSourceEngagementDoc = await _firestore
          .collection('user_term_data_source_engagement')
          .doc(userTermDataSourceEngagement.id.getOrCrash())
          .get();
      if (userTermDataSourceEngagementDoc.exists) {
        return right(
          UserTermDataSourceEngagementDto.fromFirestore(
            userTermDataSourceEngagementDoc,
          ).toDomain(),
        );
      }
      return left(const UserTermDataSourceEngagementFailure.noEngagement());
    } on PlatformException catch (e, stacktrace) {
      return _handleException(e, stacktrace);
    }
  }

  @override
  Future<
      Either<UserTermDataSourceEngagementFailure,
          KtList<UserTermDataSourceEngagement>>> getForCurrentUserAndTerm(
    String termId,
  ) async {
    try {
      final userDoc = await getIt<FirestoreHelper>().userDocument();
      final userTermDataSourceEngagementDocs = await _firestore
          .collection('user_term_data_source_engagement')
          .where(
            'user_id',
            isEqualTo: userDoc.id,
          )
          .where(
            'term_id',
            isEqualTo: termId,
          )
          .get();
      final userTermDataSourceEngagements =
          userTermDataSourceEngagementDocs.docs
              .where(
                (doc) => doc.exists,
              )
              .map(
                (doc) => UserTermDataSourceEngagementDto.fromFirestore(
                  doc,
                ).toDomain(),
              )
              .toImmutableList();
      if (userTermDataSourceEngagements.size > 0) {
        return right(
          userTermDataSourceEngagements,
        );
      }
      return left(const UserTermDataSourceEngagementFailure.noEngagement());
    } on PlatformException catch (e, stacktrace) {
      return _handleException(e, stacktrace);
    }
  }

  @override
  Stream<
      Either<UserTermDataSourceEngagementFailure,
          KtList<UserTermDataSourceEngagement>>> watchForCurrentUserAndTerms(
    KtList<String> termIds,
  ) async* {
    try {
      final userDocRef = await getIt<FirestoreHelper>().userDocument();

      yield* _firestore
          .collection('user_term_data_source_engagement')
          .where('user_id', isEqualTo: userDocRef.id)
          .where('term_id', whereIn: termIds.asList())
          .snapshots()
          .asyncMap(
            (snapshot) async => right<UserTermDataSourceEngagementFailure,
                KtList<UserTermDataSourceEngagement>>(
              snapshot.docs
                  .map(
                    (userTermDataSourceEngagementDoc) =>
                        UserTermDataSourceEngagementDto.fromFirestore(
                                userTermDataSourceEngagementDoc)
                            .toDomain(),
                  )
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith(
            (exception, stacktrace) =>
                _handleException<KtList<UserTermDataSourceEngagement>>(
                    exception, stacktrace),
          );
    } on Exception catch (exception, stacktrace) {
      yield _handleException<KtList<UserTermDataSourceEngagement>>(
          exception, stacktrace);
    }
  }

  @override
  Stream<
          Either<UserTermDataSourceEngagementFailure,
              KtList<UserTermDataSourceEngagement>>>
      watchForCurrentUserTermsAndDataSource(
    KtList<String> termIds,
    String dataSourceId,
  ) async* {
    if (termIds.isEmpty()) {
      yield right(const KtList<UserTermDataSourceEngagement>.empty());
    } else {
      try {
        final userDocRef = await getIt<FirestoreHelper>().userDocument();

        yield* _firestore
            .collection('user_term_data_source_engagement')
            .where('user_id', isEqualTo: userDocRef.id)
            .where('data_source_id', isEqualTo: dataSourceId)
            .where('term_id', whereIn: termIds.asList())
            .orderBy(
              'share_count',
              descending: true,
            )
            .orderBy(
              'like_count',
              descending: true,
            )
            .orderBy(
              'open_count',
              descending: true,
            )
            .snapshots()
            .asyncMap(
              (snapshot) async => right<UserTermDataSourceEngagementFailure,
                  KtList<UserTermDataSourceEngagement>>(
                snapshot.docs
                    .map(
                      (userTermDataSourceEngagementDoc) =>
                          UserTermDataSourceEngagementDto.fromFirestore(
                                  userTermDataSourceEngagementDoc)
                              .toDomain(),
                    )
                    .toImmutableList(),
              ),
            )
            .onErrorReturnWith(
              (exception, stacktrace) =>
                  _handleException<KtList<UserTermDataSourceEngagement>>(
                      exception, stacktrace),
            );
      } on Exception catch (exception, stacktrace) {
        yield _handleException<KtList<UserTermDataSourceEngagement>>(
            exception, stacktrace);
      }
    }
  }

  @override
  Stream<
          Either<UserTermDataSourceEngagementFailure,
              KtList<UserTermDataSourceEngagement>>>
      watchMostPopularTermsForCurrentUser({
    int limit = 10,
  }) async* {
    if (limit <= 0) {
      yield right(const KtList<UserTermDataSourceEngagement>.empty());
    }
    try {
      final userDocRef = await getIt<FirestoreHelper>().userDocument();
      yield* _firestore
          .collection('user_term_data_source_engagement')
          .orderBy(
            'is_initial_interest',
            descending: true,
          )
          .orderBy(
            'share_count',
            descending: true,
          )
          .orderBy(
            'like_count',
            descending: true,
          )
          .orderBy(
            'open_count',
            descending: true,
          )
          .where('user_id', isEqualTo: userDocRef.id)
          .limit(limit)
          .snapshots()
          .map(
        (snapshot) {
          final engagements = snapshot.docs
              .where((doc) => doc.exists)
              .map(
                (doc) => UserTermDataSourceEngagementDto.fromFirestore(doc)
                    .toDomain(),
              )
              .toImmutableList();
          return right(engagements);
        },
      );
    } on Exception catch (exception, stacktrace) {
      yield _handleException(exception, stacktrace);
    }
  }

  @override
  Future<Either<UserTermDataSourceEngagementFailure, KtList<String>>>
      getMostPopularTerms({
    int limit = 10,
  }) async {
    if (limit <= 0) {
      return right(const KtList<String>.empty());
    }
    try {
      final engagementSnapshot = await _firestore
          .collection('user_term_data_source_engagement')
          .orderBy(
            'share_count',
            descending: true,
          )
          .orderBy(
            'like_count',
            descending: true,
          )
          .orderBy(
            'open_count',
            descending: true,
          )
          .limit(limit)
          .get();
      final terms = engagementSnapshot.docs
          .map(
            (doc) => UserTermDataSourceEngagementDto.fromFirestore(doc)
                .toDomain()
                .termId,
          )
          .toImmutableList();
      return right(terms);
    } on Exception catch (exception, stacktrace) {
      return _handleException(exception, stacktrace);
    }
  }

  @override
  Future<Either<UserTermDataSourceEngagementFailure, Unit>>
      updateInitialInterest(
    String termId,
    bool isInitialInterest,
  ) async {
    try {
      final userDocRef = await getIt<FirestoreHelper>().userDocument();
      final userId = userDocRef.id;
      await _firestore
          .collection('user_term_data_source_engagement')
          .doc('CLIENT_APP_' + termId + '_' + userId)
          .update(
        {
          'is_initial_interest': isInitialInterest,
        },
      );
      return right(unit);
    } on PlatformException catch (e, stacktrace) {
      return _handleException(e, stacktrace);
    }
  }

  @override
  Future<Either<UserTermDataSourceEngagementFailure, Unit>>
      batchUpdateInitialInterests(
    Map<String, bool> termInitialInterestStatuses,
  ) async {
    // ONLY SET True VALUES TO True, DO NOT UPDATE False VALUES
    try {
      final userDocRef = await getIt<FirestoreHelper>().userDocument();
      final userId = userDocRef.id;
      final engagementColRef =
          _firestore.collection('user_term_data_source_engagement');
      await _firestore.runTransaction((transaction) async {
        // Reads, need to be executed before writes
        final termDocs = <String, DocumentSnapshot<Map<String, dynamic>>>{};
        await Future.forEach(
          termInitialInterestStatuses.entries,
          (MapEntry<String, bool> element) async {
            final docIdString = 'CLIENT_APP_' + element.key + '_' + userId;
            final docRef = engagementColRef.doc(docIdString);
            final doc = await transaction.get(docRef);
            termDocs[element.key] = doc;
          },
        );
        // Writes, after all reads are finished
        await Future.forEach(
          termInitialInterestStatuses.entries,
          (MapEntry<String, bool> element) async {
            final docIdString = 'CLIENT_APP_' + element.key + '_' + userId;
            final docRef = engagementColRef.doc(docIdString);
            final doc = termDocs[element.key];
            if (doc?.exists ?? false) {
              if (element.value) {
                transaction.update(
                  docRef,
                  {
                    'is_initial_interest': element.value,
                  },
                );
              }
            } else {
              final newUserTermDataSourceEng = UserTermDataSourceEngagement(
                id: JunctionUniqueId.fromUniqueString(docIdString),
                dataSourceId: UniqueId.fromUniqueString('CLIENT_APP'),
                termId: element.key,
                userId: UniqueId.fromUniqueString(userId),
                isInitialInterest: element.value,
                dismissCount: 0,
                likeCount: 0,
                openCount: 0,
                shareCount: 0,
              );
              transaction.set(
                docRef,
                UserTermDataSourceEngagementDto.fromDomain(
                  newUserTermDataSourceEng,
                ).toJson(),
              );
            }
          },
        );
        return transaction;
      });
      return right(unit);
    } on PlatformException catch (e, stacktrace) {
      return _handleException(e, stacktrace);
    }
  }
}
