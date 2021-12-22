// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../domain/articles/article.dart' as _i9;
import '../articles/article_detail/article_detail_page.dart' as _i5;
import '../articles/articles_overview/articles_overview_page.dart' as _i4;
import '../core/tab_view_page.dart' as _i3;
import '../settings/settings_page.dart' as _i6;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    TabViewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TabViewPage());
    },
    ArticlesOverviewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ArticlesOverviewPage());
    },
    ArticleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ArticleDetailPage(key: args.key, article: args.article));
    },
    SettingsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SettingsPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashRoute.name, path: '/'),
        _i7.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i7.RouteConfig(TabViewRoute.name, path: '/tab-view-page'),
        _i7.RouteConfig(ArticlesOverviewRoute.name,
            path: '/articles-overview-page'),
        _i7.RouteConfig(ArticleDetailRoute.name, path: '/article-detail-page'),
        _i7.RouteConfig(SettingsRoute.name, path: '/settings-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.TabViewPage]
class TabViewRoute extends _i7.PageRouteInfo<void> {
  const TabViewRoute() : super(name, path: '/tab-view-page');

  static const String name = 'TabViewRoute';
}

/// generated route for [_i4.ArticlesOverviewPage]
class ArticlesOverviewRoute extends _i7.PageRouteInfo<void> {
  const ArticlesOverviewRoute() : super(name, path: '/articles-overview-page');

  static const String name = 'ArticlesOverviewRoute';
}

/// generated route for [_i5.ArticleDetailPage]
class ArticleDetailRoute extends _i7.PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute({_i8.Key? key, required _i9.Article article})
      : super(name,
            path: '/article-detail-page',
            args: ArticleDetailRouteArgs(key: key, article: article));

  static const String name = 'ArticleDetailRoute';
}

class ArticleDetailRouteArgs {
  const ArticleDetailRouteArgs({this.key, required this.article});

  final _i8.Key? key;

  final _i9.Article article;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{key: $key, article: $article}';
  }
}

/// generated route for [_i6.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}
