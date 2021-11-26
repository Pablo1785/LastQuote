import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/articles/article_source.dart';
import 'package:ddd/domain/articles/article_failure.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/articles/i_article_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';

@LazySingleton(as: IArticleRepository)
class ArticleRepository implements IArticleRepository {
  // Using Firstore directly instead of creating something like ArticleRemoteService because Firestore SDK is mature, complete and stable enough to not need another abstraction layer
  final FirebaseFirestore _firestore;

  ArticleRepository(this._firestore);

  @override
  Stream<Either<ArticleFailure, KtList<Article>>> watchAll() {
    // users/{user ID}/userArticleInteraction/{article ID}
  }

  @override
  Stream<Either<ArticleFailure, KtList<Article>>> watchFromSource(
      ArticleSource articleSource) {
    // TODO: implement watchFromSource
    throw UnimplementedError();
  }
}
