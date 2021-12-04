import 'package:auto_route/auto_route.dart';
import '../../application/auth/auth_bloc.dart';
import '../routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              AutoRouter.of(context).replaceNamed('/articles-overview-page'),
          unAuthenticated: (_) =>
              AutoRouter.of(context).replaceNamed('/sign-in-page'),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
