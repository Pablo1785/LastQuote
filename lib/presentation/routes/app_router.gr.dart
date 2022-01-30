// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../domain/articles/article.dart' as _i11;
import '../articles/article_detail/article_detail_page.dart' as _i5;
import '../articles/articles_overview/articles_overview_page.dart' as _i4;
import '../core/tab_view_page.dart' as _i3;
import '../initial_interests/initial_interests_page.dart' as _i7;
import '../settings/settings_page.dart' as _i6;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../topic_details/topic_details_page.dart' as _i8;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.SplashPage(
              key: args.key,
              delayBeforeNavigation: args.delayBeforeNavigation,
              message: args.message));
    },
    SignInRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    TabViewRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TabViewPage());
    },
    ArticlesOverviewRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ArticlesOverviewPage());
    },
    ArticleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ArticleDetailPage(key: args.key, article: args.article));
    },
    SettingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SettingsPage());
    },
    InitialInterestsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.InitialInterestsPage());
    },
    TopicDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TopicDetailsRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.TopicDetailsPage(key: args.key, termId: args.termId));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashRoute.name, path: '/'),
        _i9.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i9.RouteConfig(TabViewRoute.name, path: '/tab-view-page'),
        _i9.RouteConfig(ArticlesOverviewRoute.name,
            path: '/articles-overview-page'),
        _i9.RouteConfig(ArticleDetailRoute.name, path: '/article-detail-page'),
        _i9.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i9.RouteConfig(InitialInterestsRoute.name,
            path: '/initial-interests-page'),
        _i9.RouteConfig(TopicDetailsRoute.name, path: '/topic-details-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<SplashRouteArgs> {
  SplashRoute(
      {_i10.Key? key, int delayBeforeNavigation = 2, String message = ''})
      : super(name,
            path: '/',
            args: SplashRouteArgs(
                key: key,
                delayBeforeNavigation: delayBeforeNavigation,
                message: message));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs(
      {this.key, this.delayBeforeNavigation = 2, this.message = ''});

  final _i10.Key? key;

  final int delayBeforeNavigation;

  final String message;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, delayBeforeNavigation: $delayBeforeNavigation, message: $message}';
  }
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.TabViewPage]
class TabViewRoute extends _i9.PageRouteInfo<void> {
  const TabViewRoute() : super(name, path: '/tab-view-page');

  static const String name = 'TabViewRoute';
}

/// generated route for [_i4.ArticlesOverviewPage]
class ArticlesOverviewRoute extends _i9.PageRouteInfo<void> {
  const ArticlesOverviewRoute() : super(name, path: '/articles-overview-page');

  static const String name = 'ArticlesOverviewRoute';
}

/// generated route for [_i5.ArticleDetailPage]
class ArticleDetailRoute extends _i9.PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute({_i10.Key? key, required _i11.Article article})
      : super(name,
            path: '/article-detail-page',
            args: ArticleDetailRouteArgs(key: key, article: article));

  static const String name = 'ArticleDetailRoute';
}

class ArticleDetailRouteArgs {
  const ArticleDetailRouteArgs({this.key, required this.article});

  final _i10.Key? key;

  final _i11.Article article;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{key: $key, article: $article}';
  }
}

/// generated route for [_i6.SettingsPage]
class SettingsRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for [_i7.InitialInterestsPage]
class InitialInterestsRoute extends _i9.PageRouteInfo<void> {
  const InitialInterestsRoute() : super(name, path: '/initial-interests-page');

  static const String name = 'InitialInterestsRoute';
}

/// generated route for [_i8.TopicDetailsPage]
class TopicDetailsRoute extends _i9.PageRouteInfo<TopicDetailsRouteArgs> {
  TopicDetailsRoute({_i10.Key? key, required String termId})
      : super(name,
            path: '/topic-details-page',
            args: TopicDetailsRouteArgs(key: key, termId: termId));

  static const String name = 'TopicDetailsRoute';
}

class TopicDetailsRouteArgs {
  const TopicDetailsRouteArgs({this.key, required this.termId});

  final _i10.Key? key;

  final String termId;

  @override
  String toString() {
    return 'TopicDetailsRouteArgs{key: $key, termId: $termId}';
  }
}
