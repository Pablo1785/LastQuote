import 'package:dartz/dartz.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement_failure.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:ddd/infrastructure/user_article_engagements/user_article_engagement_repository.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:kt_dart/kt.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:mocktail/mocktail.dart';

import '../../fake_firestore.dart';

class MockFirestoreHelper extends Mock implements FirestoreHelper {}

void main() {
  late FakeFirebaseFirestore fakeFirebaseFirestore;
  late MockFirestoreHelper mockFirestoreHelper;
  late UserArticleEngagementRepository userArticleEngagementRepository;
  late GetIt getIt;

  setUp(() async {
    // Mocks and fakes setup
    fakeFirebaseFirestore = FakeFirebaseFirestore();
    await setupFirestoreDocuments(fakeFirebaseFirestore);
    mockFirestoreHelper = MockFirestoreHelper();
    userArticleEngagementRepository =
        UserArticleEngagementRepository(fakeFirebaseFirestore);
    // Dependency injection setup
    getIt = GetIt.instance;
    if (getIt.isRegistered<FirestoreHelper>()) {
      getIt.unregister<FirestoreHelper>();
    }
    getIt.registerLazySingleton<FirestoreHelper>(() => mockFirestoreHelper);
  });

  group('getForCurrentUserAndArticle', () {
    test(
      'should return Right<UserArticleEngagement> when User, Article and UserArticleEngagement exist and have matching ids',
      () async {
        // arrange
        final user = await getUserFromFirestore(fakeFirebaseFirestore);
        when(
          () => getIt<FirestoreHelper>().userDocument(),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('users').doc(
                user.id.getOrCrash(),
              ),
        );
        final article = await getArticleFromFirestore(fakeFirebaseFirestore);
        when(
          () => getIt<FirestoreHelper>().articleDocument(
            article.id.getOrCrash(),
          ),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('articles').doc(
                article.id.getOrCrash(),
              ),
        );

        final userArticleEngagement =
            await getUserArticleEngagementFromFirestore(fakeFirebaseFirestore);
        // act
        final result = await userArticleEngagementRepository
            .getForCurrentUserAndArticle(article);
        // assert
        expect(result, right(userArticleEngagement));
      },
    );

    test(
      'should return Left<UserArticleEngagementFailure> when Article does not exist',
      () async {
        // arrange
        final user = await getUserFromFirestore(fakeFirebaseFirestore);
        when(
          () => getIt<FirestoreHelper>().userDocument(),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('users').doc(
                user.id.getOrCrash(),
              ),
        );
        final article = Article.empty();
        when(
          () => getIt<FirestoreHelper>().articleDocument(
            article.id.getOrCrash(),
          ),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('articles').doc(
                article.id.getOrCrash(),
              ),
        );

        // act
        final result = await userArticleEngagementRepository
            .getForCurrentUserAndArticle(article);

        // assert
        expect(result, left(const UserArticleEngagementFailure.noEngagement()));
      },
    );

    test(
      'should return Left<UserArticleEngagementFailure> when there is more than one user-article junction',
      () async {
        // arrange
        final user = await getUserFromFirestore(fakeFirebaseFirestore);
        when(
          () => getIt<FirestoreHelper>().userDocument(),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('users').doc(
                user.id.getOrCrash(),
              ),
        );
        final article = await getArticleFromFirestore(fakeFirebaseFirestore);
        when(
          () => getIt<FirestoreHelper>().articleDocument(
            article.id.getOrCrash(),
          ),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('articles').doc(
                article.id.getOrCrash(),
              ),
        );
        await Future.wait(
          [
            addUserArticleEngagementToFirestore(fakeFirebaseFirestore),
            addUserArticleEngagementToFirestore(fakeFirebaseFirestore),
          ],
        );

        // act
        final result = await userArticleEngagementRepository
            .getForCurrentUserAndArticle(article);

        // assert
        expect(result, left(const UserArticleEngagementFailure.unexpected()));
      },
    );
  });

  group('getForCurrentUserAndArticles', () {
    test(
      'should return articleId->UserArticleEngagement mapping for each Article when User, Article and UserArticleEngagement exist and have matching ids',
      () async {
        // arrange
        final user = await getUserFromFirestore(fakeFirebaseFirestore);
        when(
          () => getIt<FirestoreHelper>().userDocument(),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('users').doc(
                user.id.getOrCrash(),
              ),
        );
        final oneArticle = await getArticleFromFirestore(fakeFirebaseFirestore);
        final articles = [
          oneArticle,
        ].toImmutableList();
        when(
          () => getIt<FirestoreHelper>().articleDocument(
            oneArticle.id.getOrCrash(),
          ),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('articles').doc(
                oneArticle.id.getOrCrash(),
              ),
        );

        final oneUserArticleEngagement =
            await getUserArticleEngagementFromFirestore(fakeFirebaseFirestore);
        final userArticleEngagements = <String, UserArticleEngagement>{
          oneUserArticleEngagement.articleId.getOrCrash():
              oneUserArticleEngagement,
        }.toImmutableMap();
        final expected = [
          right<UserArticleEngagementFailure,
              KtMap<String, UserArticleEngagement>>(userArticleEngagements),
        ];

        // act and assert later
        userArticleEngagementRepository
            .watchForCurrentUserAndArticles(articles)
            .listen(
              expectAsync1(
                (value) => expected.contains(value),
              ),
            );
      },
    );
  });

  group('create', () {
    test(
      'should create a new user-article junction',
      () async {
        // arrange
        final user =
            await getUserFromFirestore(fakeFirebaseFirestore, 'dummyUserUid0');
        when(
          () => getIt<FirestoreHelper>().userDocument(),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('users').doc(
                user.id.getOrCrash(),
              ),
        );
        final article = await getArticleFromFirestore(fakeFirebaseFirestore);
        when(
          () => getIt<FirestoreHelper>().articleDocument(
            article.id.getOrCrash(),
          ),
        ).thenAnswer(
          (_) async => fakeFirebaseFirestore.collection('articles').doc(
                article.id.getOrCrash(),
              ),
        );

        final userArticleEngagement = UserArticleEngagement.empty().copyWith(
          userId: user.id,
          articleId: article.id,
        );
        // act
        final result = userArticleEngagementRepository.create(
          userArticleEngagement,
        );

        // assert
      },
    );
  });
}
