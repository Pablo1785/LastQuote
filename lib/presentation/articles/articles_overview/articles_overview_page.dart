import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/article_term_counts/article_term_count_watcher/article_term_count_watcher_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/article_sources/article_source_picker/article_source_picker_bloc.dart';
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

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
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
        BlocProvider<UserArticleEngagementWatcherBloc>(
          create: (context) => getIt<UserArticleEngagementWatcherBloc>(),
        ),
        BlocProvider<UserArticleEngagementActorBloc>(
          create: (context) => getIt<UserArticleEngagementActorBloc>(),
        ),
        BlocProvider<ArticleSourcePickerBloc>(
          create: (context) => getIt<ArticleSourcePickerBloc>()
            ..add(
              const ArticleSourcePickerEvent.initialLoadStarted(),
            ),
        ),
        BlocProvider<ArticleTermCountWatcherBloc>(
          create: (context) => getIt<ArticleTermCountWatcherBloc>(),
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
        ],
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor.withAlpha(0x00),
            foregroundColor: Colors.grey[700],
            elevation: 0.0,
            title: const Text('Articles'),
            bottom: PreferredSize(
              child: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  'Tap to open, long press to share',
                  style: Theme.of(context).textTheme.caption,
                ),
                color:
                    Theme.of(context).scaffoldBackgroundColor.withAlpha(0x55),
              ),
              preferredSize: Size.fromHeight(
                10.0,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.filter_alt_outlined),
                onPressed: () => _openEndDrawer(),
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () =>
                    AutoRouter.of(context).pushNamed('/settings-page'),
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
