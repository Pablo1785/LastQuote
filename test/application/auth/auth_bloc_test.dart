import 'package:dartz/dartz.dart';
import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:ddd/domain/auth/i_auth_facade.dart';
import 'package:ddd/domain/auth/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

class FakeUser extends Fake implements User {}

void main() {
  late AuthBloc authBloc;
  late MockAuthFacade mockAuthFacade;

  setUp(() {
    mockAuthFacade = MockAuthFacade();
    authBloc = AuthBloc(mockAuthFacade);
  });

  test(
    'initial state should be empty',
    () async {
      // assert
      expect(authBloc.state, const AuthState.initial());
    },
  );

  test(
    'should emit AuthState.authenticated() if _iAuthFacade.getSignedInUser() returns some User',
    () async {
      // arrange
      when(() => mockAuthFacade.getSignedInUser())
          .thenAnswer((_) async => some(FakeUser()));
      // assert later
      final expected = [
        const AuthState.authenticated(),
      ];
      expectLater(
        authBloc.stream,
        emitsInOrder(expected),
      );
      // act
      authBloc.add(const AuthEvent.authCheckRequested());
    },
  );

  test(
    'should emit AuthState.unAuthenticated() if _iAuthFacade.getSignedInUser() doesn\'t return anything',
    () async {
      // arrange
      when(() => mockAuthFacade.getSignedInUser())
          .thenAnswer((_) async => none());
      // assert later
      final expected = [
        const AuthState.unAuthenticated(),
      ];
      expectLater(
        authBloc.stream,
        emitsInOrder(expected),
      );
      // act
      authBloc.add(const AuthEvent.authCheckRequested());
    },
  );

  test(
    'should emit AuthState.unAuthenticated() on signedOut event',
    () {
      // arrange
      when(() => mockAuthFacade.signOut()).thenAnswer((_) => Future.value());
      // assert later
      final expected = [
        const AuthState.unAuthenticated(),
      ];
      expectLater(
        authBloc.stream,
        emitsInOrder(expected),
      );
      // act
      authBloc.add(const AuthEvent.signedOut());
    },
  );

  test(
    'should call signOut() method of AuthFacade on signedOut event',
    () async {
      // arrange
      when(() => mockAuthFacade.signOut())
          .thenAnswer((_) async => Future.value());
      // act
      authBloc.add(const AuthEvent.signedOut());

      // assert
      await untilCalled(() => mockAuthFacade.signOut());
      verify(() => mockAuthFacade.signOut());
    },
  );

  tearDown(() {
    authBloc.close();
  });
}
