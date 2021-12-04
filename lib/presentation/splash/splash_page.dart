import 'package:auto_route/auto_route.dart';
import 'package:ddd/presentation/core/fun_logo.dart';
import '../../application/auth/auth_bloc.dart';
import '../routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) async {
            await Future.delayed(
              const Duration(seconds: 2),
              () {
                AutoRouter.of(context).replaceNamed('/articles-overview-page');
              },
            );
          },
          unAuthenticated: (_) async {
            await Future.delayed(
              const Duration(seconds: 2),
              () {
                AutoRouter.of(context).replaceNamed('/sign-in-page');
              },
            );
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: Shimmer.fromColors(
            baseColor: Colors.indigo[400]!,
            highlightColor: Colors.blue[200]!,
            enabled: true,
            child: FunLogo(),
          ),
        ),
      ),
    );
  }
}
