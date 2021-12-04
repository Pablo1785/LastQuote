import '../../domain/auth/user.dart';
import '../../domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

extension FirebaseUserDomainX on fb.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
