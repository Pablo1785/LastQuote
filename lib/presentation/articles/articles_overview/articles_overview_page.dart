import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/article_sources/article_source_picker/article_source_picker_bloc.dart';
import '../../../application/articles/article_actor/article_actor_bloc.dart';
import '../../../application/articles/article_watcher/article_watcher_bloc.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../../injection.dart';
import 'widgets/article_source_picker_drawer.dart';
import 'widgets/articles_overview_body_widget.dart';

class ArticlesOverviewPage extends StatefulWidget {
  const ArticlesOverviewPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ArticlesOverviewPageState();
}

class _ArticlesOverviewPageState extends State<ArticlesOverviewPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool drawerOpen = false;
  int currentArticleSourceIndex = -1;

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
    setState(() {
      drawerOpen = false;
    });
  }

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
        BlocProvider<ArticleSourcePickerBloc>(
          create: (context) => getIt<ArticleSourcePickerBloc>()
            ..add(
              const ArticleSourcePickerEvent.initialLoadStarted(),
            ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unAuthenticated: (_) {
                  AutoRouter.of(context).replaceNamed('/sign-in-page');
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<ArticleActorBloc, ArticleActorState>(
            listener: (context, state) {
              state.maybeMap(
                likeFailure: (likeFailure) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: likeFailure.articleFailure.map(
                        unexpected: (_) =>
                            ':smile: Unexpected error occured. Please restart the app or IMPLEMENT ArticleActorBloc.',
                        insufficientPermissions: (_) =>
                            'You don\'t have sufficient permissions to Like this content.',
                        sourceDisabled: (_) =>
                            'You can\'t Like recommendations from disabled sources',
                        noActiveSource: (_) =>
                            'You don\'t have any recommendations sources enabled. This should not happen. Try restarting the app.'),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          key: _scaffoldKey,
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
                icon: const Icon(Icons.filter_alt_outlined),
                onPressed: () => _openEndDrawer(),
              ),
            ],
          ),
          body: const ArticlesOverviewBody(),
          endDrawer: const ArticleSourcePickerDrawer(),
        ),
      ),
    );
  }
}
