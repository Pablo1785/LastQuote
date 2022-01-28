import 'package:dartz/dartz.dart';

import 'data_ownership_failures.dart';

abstract class IDataOwnershipFacade {
  Future<Either<DataOwnershipFailure, Unit>> deleteUserData();
}
