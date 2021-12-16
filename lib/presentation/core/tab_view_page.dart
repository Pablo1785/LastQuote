import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:ddd/presentation/articles/articles_overview/articles_overview_page.dart';
import 'package:ddd/presentation/topics/topics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../injection.dart';

class TabViewPage extends HookWidget {
  const TabViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unAuthenticated: (_) => AutoRouter.of(context).popUntilRoot(),
          orElse: () {},
        );
      },
      child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("The Last Quote"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.trending_up_outlined),
                  text: "Topics",
                ),
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: "Articles",
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signedOut());
                },
                icon: const Icon(Icons.exit_to_app),
              )
            ],
          ),
          body: const TabBarView(
            children: [
              TopicsPage(),
              ArticlesOverviewPage(),
            ],
          ),
        ),
      ),
    );
  }
}
