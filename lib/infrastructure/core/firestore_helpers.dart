import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../domain/article_sources/article_source.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/errors.dart';
import '../articles/article_dtos.dart';

import '../../injection.dart';

@injectable
class FirestoreHelper {
  final IAuthFacade _authFacade;
  final FirebaseFirestore _firestore;

  FirestoreHelper(
    this._authFacade,
    this._firestore,
  );

  Future<DocumentReference<Map<String, dynamic>>> userDocument() async {
    final userOption = await _authFacade.getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return _firestore.collection('users').doc(user.id.getOrCrash());
  }

  Future<List<DocumentReference<Map<String, dynamic>>>>
      userEnabledArticleSources() async {
    final userDocRef = await userDocument();
    final userArticleSourceStatuses = await _firestore
        .collection('user_article_source_statuses')
        .where(
          'user_id',
          isEqualTo: userDocRef,
        )
        .where(
          'is_enabled',
          isEqualTo: true,
        )
        .get();
    final enabledSourceIds = userArticleSourceStatuses.docs
        .where(
          (doc) => doc.exists,
        )
        .map(
          (doc) => (doc.data()['article_source_id'] as DocumentReference).id,
        )
        .toList();

    if (enabledSourceIds.isEmpty) {
      return List.empty();
    } else {
      final articleSourceQuery =
          await _firestore.collection('article_sources').get();
      return articleSourceQuery.docs
          .where((doc) => doc.exists)
          .where((doc) => enabledSourceIds.contains(doc.id))
          .map((doc) => doc.reference)
          .toList(); // if this returns List.empty then there are source_ids in user_article_source_statuses that arent in article_sources
    }
  }
}
