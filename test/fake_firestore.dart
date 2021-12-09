import 'dart:convert';

import 'package:ddd/domain/article_sources/article_source.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/auth/user.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/infrastructure/article_sources/article_source_dtos.dart';
import 'package:ddd/infrastructure/articles/article_dtos.dart';
import 'package:ddd/infrastructure/user_article_engagements/user_article_engagement_dtos.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

import 'fixtures/fixture_reader.dart';

Future<void> addUserArticleEngagementToFirestore(
  FakeFirebaseFirestore firestore,
) async {
  // UserArticleEngagement from fixture & Firestore
  var userArticleEngagementMap = (json
      .decode(fixture('user_article_engagement.json')) as Map<String, dynamic>);
  userArticleEngagementMap['user_id'] =
      (await firestore.collection('users').get()).docs.first.reference;
  userArticleEngagementMap['article_id'] =
      (await firestore.collection('articles').get()).docs.first.reference;
  await firestore
      .collection('user_article_engagement')
      .add(userArticleEngagementMap);
}

Future<void> addValuesToFirestore(
  FakeFirebaseFirestore firestore,
) async {
  // User from fixture
  await firestore.collection('users').add({});

  // ArticleSource from fixture
  await firestore.collection('article_sources').add(
        json.decode(fixture('article_sources.json')) as Map<String, dynamic>,
      );

  // Article from fixture & Firestore
  var articleMap =
      (json.decode(fixture('articles.json')) as Map<String, dynamic>);
  articleMap['source_id'] =
      (await firestore.collection('article_sources').get())
          .docs
          .first
          .reference;
  await firestore.collection('articles').add(articleMap);

  // UserArticleEngagement from fixture & Firestore
  await addUserArticleEngagementToFirestore(firestore);
}

Future<User> getUserFromFirestore(
  FakeFirebaseFirestore firestore,
) async {
  // User from Firestore
  final userQuerySnapshot = await firestore.collection('users').get();
  final userQueryDocSnap =
      userQuerySnapshot.docs.where((doc) => doc.exists).first;
  return User(
    id: UniqueId.fromUniqueString(userQueryDocSnap.id),
  );
}

Future<ArticleSource> getArticleSourceFromFirestore(
  FakeFirebaseFirestore firestore,
) async {
  // ArticleSource from Firestore
  final articleSourceQuerySnapshot =
      await firestore.collection('article_sources').get();
  final articleSourceQueryDocSnap =
      articleSourceQuerySnapshot.docs.where((doc) => doc.exists).first;
  return ArticleSourceDto.fromFirestore(articleSourceQueryDocSnap).toDomain();
}

Future<Article> getArticleFromFirestore(
  FakeFirebaseFirestore firestore,
) async {
  // Article from Firestore
  final articleQuerySnapshot = await firestore.collection('articles').get();
  final articleQueryDocSnap =
      articleQuerySnapshot.docs.where((doc) => doc.exists).first;
  return ArticleDto.fromFirestore(articleQueryDocSnap).toDomain();
}

Future<UserArticleEngagement> getUserArticleEngagementFromFirestore(
  FakeFirebaseFirestore firestore,
) async {
  // UserArticleEngagement from Firestore
  final userArticleEngagementQuerySnapshot =
      await firestore.collection('user_article_engagement').get();
  final userArticleEngagementQueryDocSnap =
      userArticleEngagementQuerySnapshot.docs.where((doc) => doc.exists).first;
  return UserArticleEngagementDto.fromFirestore(
          userArticleEngagementQueryDocSnap)
      .toDomain();
}

Future<void> setupFirestoreDocuments(FakeFirebaseFirestore firestore) async {
  // Populate Firestore
  await addValuesToFirestore(firestore);

  // Get Firestore values
  final user = await getUserFromFirestore(firestore);
  final articleSource = await getArticleSourceFromFirestore(firestore);
  final article = await getArticleFromFirestore(firestore);
  final userArticleEngagement =
      await getUserArticleEngagementFromFirestore(firestore);

  // Quick check Firestore values
  [user, article, articleSource, userArticleEngagement].forEach(
    (element) => print(
      element.toString(),
    ),
  );
}
