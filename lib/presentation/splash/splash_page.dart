import 'package:auto_route/auto_route.dart';
import 'package:ddd/presentation/core/fun_logo.dart';
import 'package:ddd/presentation/core/quotes_logo.dart';
import '../../application/auth/auth_bloc.dart';
import '../routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    Key? key,
    this.delayBeforeNavigation = 2,
    this.message = '',
  }) : super(key: key);

  final int delayBeforeNavigation;
  final String message;

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().state.map(
      initial: (_) {
        print('Initial auth state');
      },
      authenticated: (_) async {
        await Future.delayed(
          Duration(seconds: delayBeforeNavigation),
          () {
            AutoRouter.of(context).replaceNamed('/tab-view-page');
          },
        );
      },
      unAuthenticated: (_) async {
        await Future.delayed(
          Duration(seconds: delayBeforeNavigation),
          () {
            AutoRouter.of(context).replaceNamed('/sign-in-page');
          },
        );
      },
    );
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            print('Initial auth state');
          },
          authenticated: (_) async {
            await Future.delayed(
              Duration(seconds: delayBeforeNavigation),
              () {
                AutoRouter.of(context).replaceNamed('/tab-view-page');
              },
            );
          },
          unAuthenticated: (_) async {
            await Future.delayed(
              Duration(seconds: delayBeforeNavigation),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const QuotesLogo(),
                Text(message),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
