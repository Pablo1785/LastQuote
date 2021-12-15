import 'package:dartz/dartz.dart';
import 'package:ddd/domain/terms/term.dart';
import 'package:ddd/domain/terms/term_failure.dart';
import 'package:kt_dart/kt.dart';

abstract class ITermRepository {
  // get all terms
  Stream<Either<TermFailure, KtList<Term>>> watchAll();

  Stream<Either<TermFailure, KtList<Term>>> watchSpecificTerms(
    List<String> termIds,
  );
}
