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

  Future<List<DocumentSnapshot<ArticleSourceDto>>>
      userEnabledArticleSources() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final userArticleSourceStatuses = await FirebaseFirestore.instance
        .collection('user_article_source_statuses')
        .where('user_id', isEqualTo: user.id.getOrCrash())
        .where('is_enabled', isEqualTo: true)
        .get();
    final enabledArticleSources = await Future.wait(
      userArticleSourceStatuses.docs.where((junction) => junction.exists).map(
            (junction) => FirebaseFirestore.instance
                .doc('article_sources/${junction.data()["source_id"]}')
                .withConverter<ArticleSourceDto>(
                    fromFirestore: (doc, options) =>
                        ArticleSourceDto.fromFirestore(doc),
                    toFirestore: (articleSourceDto, options) =>
                        articleSourceDto.toJson())
                .get(),
          ),
    );
    return enabledArticleSources;
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
