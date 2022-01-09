import 'package:dartz/dartz.dart';
import 'auth_failure.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  // Unit is a type that is similar to void, but doesn't create problems in Either<>
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  // Return true if new user to display initial loading animation and interests page, else false
  Future<Either<AuthFailure, bool>> signInWithGoogle();
  Future<void> signOut();
}
