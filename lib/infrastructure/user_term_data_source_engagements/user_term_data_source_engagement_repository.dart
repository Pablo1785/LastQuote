import 'package:dartz/dartz.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/terms/term.dart';
import 'package:ddd/domain/user_term_data_source_engagement/i_user_term_data_source_engagement_repository.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement_failure.dart';
import 'package:kt_dart/src/collection/kt_list.dart';

class UserTermDataSourceEngagement
    implements IUserTermDataSourceEngagementRepository {
  @override
  Future<Either<UserTermDataSourceEngagementFailure, Unit>> create(
    UserTermDataSourceEngagement userTermDataSourceEngagement,
  ) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<
      Either<UserTermDataSourceEngagementFailure,
          UserTermDataSourceEngagement>> getForCurrentUserAndTerm(
    Term term,
  ) {
    // TODO: implement getForCurrentUserAndTerm
    throw UnimplementedError();
  }

  @override
  Future<Either<UserTermDataSourceEngagementFailure, Unit>> update(
    UserTermDataSourceEngagement userTermDataSourceEngagement,
  ) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<
      Either<UserTermDataSourceEngagementFailure,
          KtList<UserTermDataSourceEngagement>>> watchForCurrentUserAndTerms(
    KtList<Term> terms,
  ) async* {
    // TODO: implement watchForCurrentUserAndTerms
    throw UnimplementedError();
  }

  @override
  Stream<
          Either<UserTermDataSourceEngagementFailure,
              KtList<UserTermDataSourceEngagement>>>
      watchForCurrentUserTermsAndDataSources(
    KtList<Term> terms,
    KtList<DataSource> dataSources,
  ) async* {
    // TODO: implement watchForCurrentUserTermsAndDataSources
    throw UnimplementedError();
  }
}
