import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_firestore.dart';

void main() async {
  test(
    'should create documents with matching DocumentReferences',
    () async {
      // arrange
      final firestore = FakeFirebaseFirestore();
      await setupFirestoreDocuments(firestore);
      final user = await getUserFromFirestore(firestore);
      final article = await getArticleFromFirestore(firestore);
      final userDocRef =
          firestore.collection('users').doc(user.id.getOrCrash());
      final articleDocRef =
          firestore.collection('articles').doc(article.id.getOrCrash());

      // act
      final userArticleDoc =
          (await firestore.collection('user_article_engagement').get())
              .docs
              .first;
      // assert
      expect(userArticleDoc.data()['user_id'], userDocRef);
      expect(userArticleDoc.data()['article_id'], articleDocRef);
    },
  );
  test(
    'should create objects with matching id fields',
    () async {
      // arrange
      final firestore = FakeFirebaseFirestore();
      await setupFirestoreDocuments(firestore);

      // act
      final user = await getUserFromFirestore(firestore, 'dummyUidUser0');
      final articleSource = await getArticleSourceFromFirestore(
          firestore, 'dummyUidArticleSource0');
      final article =
          await getArticleFromFirestore(firestore, 'dummyUidArticle0');
      final userArticleEngagement = await getUserArticleEngagementFromFirestore(
          firestore, 'dummyUidUserArticleEngagement0');

      // assert
      expect(article.sourceId.getOrCrash(), articleSource.id.getOrCrash());
      expect(userArticleEngagement.userId.getOrCrash(), user.id.getOrCrash());
      expect(userArticleEngagement.articleId.getOrCrash(),
          article.id.getOrCrash());
    },
  );
}
