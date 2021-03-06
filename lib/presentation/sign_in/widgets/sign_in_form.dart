import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ddd/presentation/core/fun_logo.dart';
import 'package:ddd/presentation/core/quotes_logo.dart';
import 'package:ddd/presentation/routes/app_router.gr.dart';
import 'package:ddd/presentation/splash/splash_page.dart';
import '../../../application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  SignInForm({Key? key}) : super(key: key);

  final _signInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Form(
          key: _signInFormKey,
          autovalidateMode:
              context.read<SignInFormBloc>().state.showErrorMessages,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: [
                const Center(
                  child: QuotesLogo(),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      12,
                      0,
                      12,
                      12,
                    ),
                    child: Text(
                      'Your automatic web browser',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                // const Divider(
                //   indent: 100,
                //   endIndent: 100,
                //   thickness: 1.5,
                // ),
                const SizedBox(
                  height: 28,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.emailChanged(value),
                      ),
                  validator: (_) => context
                          .read<SignInFormBloc>()
                          .state
                          .emailAddress
                          .isValid()
                      ? null
                      : 'Invalid Email',
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) =>
                      context.read<SignInFormBloc>().state.password.isValid()
                          ? null
                          : 'Short Password',
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .signInWithEmailAndPasswordPressed(),
                              );
                        },
                        child: const Text('SIGN IN'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .registerWithEmailAndPasswordPressed(),
                              );
                        },
                        child: const Text('REGISTER'),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<SignInFormBloc>().add(
                          const SignInFormEvent.signInWithGooglePressed(),
                        );
                  },
                  child: const Text(
                    'USE YOUR GOOGLE ACCOUNT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 8,
                  ),
                  const LinearProgressIndicator(
                    value: null,
                  ),
                ]
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        context.read<SignInFormBloc>().state.authFailureOrIsNewUserOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                      cancelledByUser: (_) => 'Cancelled',
                      serverError: (_) => 'Server error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid email and password combination',
                    ),
                  ).show(context);
                },
                (isNewUser) {
                  if (isNewUser) {
                    // Give the backend a couple of seconds to set up initial user data
                    AutoRouter.of(context).replaceNamed(
                      '/initial-interests-page',
                    );
                  } else {
                    AutoRouter.of(context).replaceNamed('/tab-view-page');
                  }
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                },
              ),
            );
      },
    );
  }
}
