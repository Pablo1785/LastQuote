import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'term_engagement.dart';
import 'term_engagement_failure.dart';

abstract class ITermEngagementRepository {
  // get all terms
  Stream<Either<TermEngagementFailure, KtList<TermEngagement>>> watchAll({
    int limit = 10,
  });

  Stream<Either<TermEngagementFailure, KtList<TermEngagement>>>
      watchSpecificTerms(
    List<String> termIds,
  );
}
