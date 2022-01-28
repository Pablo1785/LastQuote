import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/article_sources/article_source_picker/article_source_picker_bloc.dart';
import 'package:ddd/application/article_term_counts/article_term_count_watcher/article_term_count_watcher_bloc.dart';
import 'package:ddd/application/articles/article_watcher/article_watcher_bloc.dart';
import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:ddd/application/recommendations/recommendation_watcher/recommendation_watcher_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart';
import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart';
import 'package:ddd/presentation/articles/articles_overview/articles_overview_page.dart';
import 'package:ddd/presentation/core/quotes_logo.dart';
import 'package:ddd/presentation/routes/app_router.gr.dart';
import 'package:ddd/presentation/settings/settings_page.dart';
import 'package:ddd/presentation/topics/topics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../injection.dart';

class TabViewPage extends HookWidget {
  const TabViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RecommendationWatcherBloc>(
          create: (context) => getIt<RecommendationWatcherBloc>()
            ..add(
              const RecommendationWatcherEvent.watchAllForCurrentUserStarted(),
            ),
        ),
        BlocProvider<ArticleWatcherBloc>(
          create: (context) => getIt<ArticleWatcherBloc>(),
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
        BlocProvider<UserTermDataSourceEngagementWatcherBloc>(
          create: (context) => getIt<UserTermDataSourceEngagementWatcherBloc>(),
        ),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            unAuthenticated: (_) => AutoRouter.of(context).replace(
              SplashRoute(
                delayBeforeNavigation: 1,
              ),
            ),
            orElse: () {},
          );
        },
        child: DefaultTabController(
          initialIndex: 1,
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              leadingWidth: 42,
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcATop,
                  ),
                  child: QuotesLogo(
                    size: 25,
                  ),
                ),
              ),
              title: const Text("The Last Quote"),
              bottom: const TabBar(
                labelPadding: EdgeInsets.all(8.0),
                tabs: [
                  Tab(
                    icon: Icon(Icons.trending_up_outlined),
                    text: "Topics",
                  ),
                  Tab(
                    icon: Icon(Icons.home_filled),
                    text: "Articles",
                  ),
                  Tab(
                    icon: Icon(Icons.privacy_tip),
                    text: "Data & Privacy",
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
                SettingsPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
