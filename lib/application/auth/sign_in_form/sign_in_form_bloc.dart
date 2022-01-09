import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/core/value_validators.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:equatable/equatable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            emailAddress: EmailAddress(event.emailStr),
            authFailureOrIsNewUserOption: none(),
          ),
        );
      },
    );
    on<PasswordChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            password: Password(event.passwordStr),
            authFailureOrIsNewUserOption: none(),
          ),
        );
      },
    );
    on<RegisterWithEmailAndPasswordPressed>(
      (event, emit) async {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        if (isEmailValid && isPasswordValid) {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrIsNewUserOption: none(),
          ));

          failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }
        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: AutovalidateMode.always,
            authFailureOrIsNewUserOption: optionOf(
              failureOrSuccess?.fold(
                (failure) => left(failure),
                (_) => right(true),
              ),
            ),
          ),
        );
      },
    );
    on<SignInWithEmailAndPasswordPressed>(
      (event, emit) async {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        if (isEmailValid && isPasswordValid) {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrIsNewUserOption: none(),
          ));

          failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }

        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: AutovalidateMode.always,
            authFailureOrIsNewUserOption: optionOf(
              failureOrSuccess?.fold(
                (failure) => left(failure),
                (_) => right(false),
              ),
            ),
          ),
        );
      },
    );
    on<SignInWithGooglePressed>(
      (event, emit) async {
        emit(state.copyWith(
          isSubmitting: true,
          authFailureOrIsNewUserOption: none(),
        ));

        final failureOrSuccess = await _authFacade.signInWithGoogle();
        emit(state.copyWith(
          isSubmitting: false,
          authFailureOrIsNewUserOption: some(failureOrSuccess),
        ));
      },
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrIsNewUserOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.always,
      authFailureOrIsNewUserOption: optionOf(
        failureOrSuccess?.fold(
          (failure) => left(failure),
          (_) => right(true),
        ),
      ),
    );
  }
}
