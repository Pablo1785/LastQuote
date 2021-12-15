import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../articles/article.dart';
import '../terms/term.dart';
import 'article_term_count.dart';
import 'article_term_count_failure.dart';

abstract class IArticleTermCountRepository {
  // get terms
  Future<Either<ArticleTermCountFailure, ArticleTermCount>>
      getForTermAndArticle(
    Term term,
    Article article,
  );

  Future<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>
      getForArticle(
    Article article,
  );

  Future<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>> getForTerm(
    Term term,
  );

  Stream<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>
      watchForArticles(
    KtList<Article> articles,
  );

  Stream<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>
      watchForTerms(
    KtList<Term> terms,
  );

  Stream<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>
      watchForTermsAndArticles(
    KtList<Term> terms,
    KtList<Article> articles,
  );
}
