import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/auth/i_auth_facade.dart';
import 'package:ddd/domain/auth/user.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/infrastructure/articles/article_dtos.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:ddd/infrastructure/user_article_engagements/user_article_engagement_dtos.dart';
import 'package:ddd/infrastructure/user_article_engagements/user_article_engagement_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

import '../../fixtures/fixture_reader.dart';

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockCollectionReference extends Mock
    implements CollectionReference<Map<String, dynamic>> {}

class MockDocumentReference extends Mock
    implements DocumentReference<Map<String, dynamic>> {}

class MockDocumentSnapshot extends Mock
    implements DocumentSnapshot<Map<String, dynamic>> {}

class MockAuthFacade extends Mock implements IAuthFacade {}

void main() {
  late UserArticleEngagementRepository userArticleEngagementRepository;
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference mockCollectionReference;
  late MockDocumentReference mockDocumentReference;
  late MockDocumentSnapshot mockDocumentSnapshot;
  late MockAuthFacade mockAuthFacade;
  final getIt = GetIt.instance;

  setUp(() async {
    Firebase.initializeApp();
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockDocumentSnapshot = MockDocumentSnapshot();
    mockAuthFacade = MockAuthFacade();
    userArticleEngagementRepository =
        UserArticleEngagementRepository(mockFirebaseFirestore);
  });

  void arrangeFirebaseMocks(
    MockFirebaseFirestore mockFirebaseFirestore,
    MockCollectionReference mockCollectionReference,
    MockDocumentReference mockDocumentReference,
    MockDocumentSnapshot mockDocumentSnapshot,
    Map<String, dynamic> responseMap,
  ) {
    // Extension methods cannot be stubbed by Mocktail because they are always called directly as static methods on extended classes; instead try Mocking every public member of extended class that mocked method touches
    GetIt.instance.registerLazySingleton<IAuthFacade>(() => mockAuthFacade);

    when(
      () => mockAuthFacade.getSignedInUser(),
    ).thenAnswer(
      (_) async => some(
        User(
          id: UniqueId.fromUniqueString(
            "userUniqueId",
          ),
        ),
      ),
    );
    when(
      () => mockFirebaseFirestore.collection(any()),
    ).thenReturn(
      mockCollectionReference,
    );
    when(
      () => mockCollectionReference.doc(any()),
    ).thenReturn(
      mockDocumentReference,
    );
    when(
      () => mockDocumentReference.get(),
    ).thenAnswer(
      (_) async => mockDocumentSnapshot,
    );
    when(
      () => mockDocumentSnapshot.data(),
    ).thenReturn(
      responseMap,
    );
  }

  group(
    'getForCurrentUserAndArticle',
    () {
      test(
        'should return userArticleEngagement when there is one in database',
        () async {
          // arrange
          final userArticleEngagement = UserArticleEngagementDto.fromJson(
            json.decode(fixture('user_article_engagements.json')),
          ).toDomain();
          final article = ArticleDto.fromJson(
            json.decode(fixture('articles.json')),
          ).toDomain();
          arrangeFirebaseMocks(
            mockFirebaseFirestore,
            mockCollectionReference,
            mockDocumentReference,
            mockDocumentSnapshot,
            json.decode(fixture('user_article_engagements.json')),
          );
          // act
          final result =
              await userArticleEngagementRepository.getForCurrentUserAndArticle(
            article,
          );
          // assert
          expect(
            result,
            userArticleEngagement,
          );
        },
      );
    },
  );
}
