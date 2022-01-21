// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:flutter/widgets.dart' as _i10;

import '../../domain/articles/article.dart' as _i11;
import '../articles/article_detail/article_detail_page.dart' as _i5;
import '../articles/articles_overview/articles_overview_page.dart' as _i4;
import '../core/tab_view_page.dart' as _i3;
import '../initial_interests/initial_interests_page.dart' as _i7;
import '../settings/settings_page.dart' as _i6;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.SplashPage(
              key: args.key,
              delayBeforeNavigation: args.delayBeforeNavigation,
              message: args.message));
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    TabViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TabViewPage());
    },
    ArticlesOverviewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ArticlesOverviewPage());
    },
    ArticleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ArticleDetailPage(key: args.key, article: args.article));
    },
    SettingsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SettingsPage());
    },
    InitialInterestsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.InitialInterestsPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i8.RouteConfig(TabViewRoute.name, path: '/tab-view-page'),
        _i8.RouteConfig(ArticlesOverviewRoute.name,
            path: '/articles-overview-page'),
        _i8.RouteConfig(ArticleDetailRoute.name, path: '/article-detail-page'),
        _i8.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i8.RouteConfig(InitialInterestsRoute.name,
            path: '/initial-interests-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<SplashRouteArgs> {
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
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.TabViewPage]
class TabViewRoute extends _i8.PageRouteInfo<void> {
  const TabViewRoute() : super(name, path: '/tab-view-page');

  static const String name = 'TabViewRoute';
}

/// generated route for [_i4.ArticlesOverviewPage]
class ArticlesOverviewRoute extends _i8.PageRouteInfo<void> {
  const ArticlesOverviewRoute() : super(name, path: '/articles-overview-page');

  static const String name = 'ArticlesOverviewRoute';
}

/// generated route for [_i5.ArticleDetailPage]
class ArticleDetailRoute extends _i8.PageRouteInfo<ArticleDetailRouteArgs> {
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
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for [_i7.InitialInterestsPage]
class InitialInterestsRoute extends _i8.PageRouteInfo<void> {
  const InitialInterestsRoute() : super(name, path: '/initial-interests-page');

  static const String name = 'InitialInterestsRoute';
}
