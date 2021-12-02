import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/articles/article_source.dart';
import 'package:ddd/domain/auth/i_auth_facade.dart';
import 'package:ddd/domain/core/errors.dart';
import 'package:ddd/infrastructure/articles/article_dtos.dart';

import '../../injection.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }

  Future<List<DocumentReference>> userEnabledArticleSources() async {
    final userDocRef = await FirebaseFirestore.instance.userDocument();
    final userArticleSourceStatuses = await FirebaseFirestore.instance
        .collection('user_article_source_statuses')
        .where('user_id', isEqualTo: userDocRef)
        .where('is_enabled', isEqualTo: true)
        .get();
    final enabledSourceIds = userArticleSourceStatuses.docs
        .where((doc) => doc.exists)
        .map((doc) => (doc.data()['article_source_id'] as DocumentReference).id)
        .toList();

    if (enabledSourceIds.isEmpty) {
      return List.empty();
    } else {
      final articleSourceQuery =
          await FirebaseFirestore.instance.collection('article_sources').get();
      return articleSourceQuery.docs
          .where((doc) => doc.exists)
          .where((doc) => enabledSourceIds.contains(doc.id))
          .map((doc) => doc.reference)
          .toList(); // if this returns List.empty then there are source_ids in user_article_source_statuses that arent in article_sources
    }
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get userCollection => collection('users');
  CollectionReference get articleCollection => collection('articles');
  CollectionReference get termCollection => collection('terms');
  CollectionReference get articleSourceCollection =>
      collection('article_sources');
  CollectionReference get dataSourceCollection => collection('data_sources');
}
