import 'package:dartz/dartz.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/terms/term.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement_failure.dart';
import 'package:kt_dart/kt.dart';

abstract class IUserTermDataSourceEngagementRepository {
  // get articles
  Future<
      Either<UserTermDataSourceEngagementFailure,
          UserTermDataSourceEngagement>> getForCurrentUserAndTerm(
    String termId,
  );

  // return ArticleId->UserTermDataSourceEngagement mapping for current User
  Stream<
      Either<UserTermDataSourceEngagementFailure,
          KtList<UserTermDataSourceEngagement>>> watchForCurrentUserAndTerms(
    KtList<String> termIds,
  );

  Stream<
          Either<UserTermDataSourceEngagementFailure,
              KtList<UserTermDataSourceEngagement>>>
      watchForCurrentUserTermsAndDataSource(
    KtList<String> termIds,
    String dataSourceId,
  );

  Future<Either<UserTermDataSourceEngagementFailure, Unit>> create(
    UserTermDataSourceEngagement userTermDataSourceEngagement,
  );

  Future<Either<UserTermDataSourceEngagementFailure, Unit>> update(
      UserTermDataSourceEngagement userTermDataSourceEngagement);

  Future<
      Either<UserTermDataSourceEngagementFailure,
          UserTermDataSourceEngagement>> get(
      UserTermDataSourceEngagement userTermDataSourceEngagement);
}
