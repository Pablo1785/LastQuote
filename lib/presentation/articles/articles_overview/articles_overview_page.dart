import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/articles/article_actor/article_actor_bloc.dart';
import 'package:ddd/application/articles/article_watcher/article_watcher_bloc.dart';
import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:ddd/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesOverviewPage extends StatelessWidget {
  const ArticlesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArticleWatcherBloc>(
          create: (context) => getIt<ArticleWatcherBloc>()
            ..add(
              const ArticleWatcherEvent.watchAllStarted(),
            ),
        ),
        BlocProvider<ArticleActorBloc>(
          create: (context) => getIt<ArticleActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unAuthenticated: (_) =>
                    AutoRouter.of(context).pushNamed('/sign-in-page'),
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Articles'),
            leading: IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: const Icon(Icons.exit_to_app),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.filter_list_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
