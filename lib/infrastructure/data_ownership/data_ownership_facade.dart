import 'package:ddd/domain/data_ownership/data_ownership_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/data_ownership/i_data_ownership_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_functions/cloud_functions.dart';

@LazySingleton(as: IDataOwnershipFacade)
class DataOwnershipFacade implements IDataOwnershipFacade {
  final FirebaseFunctions _functions;

  DataOwnershipFacade(this._functions);

  @override
  Future<Either<DataOwnershipFailure, Unit>> deleteUserData() async {
    try {
      final callable = _functions.httpsCallable('deleteUserDataOnRequest');
      await callable();
      return right(unit);
    } on Exception catch (e) {
      return left(const DataOwnershipFailure.serverError());
    }
  }
}
