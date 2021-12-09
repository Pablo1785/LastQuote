import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_firestore.dart';

void main() async {
  test(
    'should create objects with matching id fields',
    () async {
      // arrange
      final firestore = FakeFirebaseFirestore();
      await setupFirestoreDocuments(firestore);

      // act
      final user = await getUserFromFirestore(firestore);
      final articleSource = await getArticleSourceFromFirestore(firestore);
      final article = await getArticleFromFirestore(firestore);
      final userArticleEngagement =
          await getUserArticleEngagementFromFirestore(firestore);

      // assert
      expect(article.sourceId.getOrCrash(), articleSource.id.getOrCrash());
      expect(userArticleEngagement.userId.getOrCrash(), user.id.getOrCrash());
      expect(userArticleEngagement.articleId.getOrCrash(),
          article.id.getOrCrash());
    },
  );
}
