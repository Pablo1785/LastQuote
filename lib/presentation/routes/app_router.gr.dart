// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/articles/article.dart' as _i8;
import '../../domain/user_article_engagements/user_article_engagement.dart'
    as _i9;
import '../articles/article_detail/article_detail_page.dart' as _i4;
import '../articles/articles_overview/articles_overview_page.dart' as _i3;
import '../settings/settings_page.dart' as _i5;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    ArticlesOverviewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ArticlesOverviewPage());
    },
    ArticleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ArticleDetailPage(
              key: args.key,
              article: args.article,
              userArticleEngagement: args.userArticleEngagement));
    },
    SettingsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingsPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(ArticlesOverviewRoute.name,
            path: '/articles-overview-page'),
        _i6.RouteConfig(ArticleDetailRoute.name, path: '/article-detail-page'),
        _i6.RouteConfig(SettingsRoute.name, path: '/settings-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.ArticlesOverviewPage]
class ArticlesOverviewRoute extends _i6.PageRouteInfo<void> {
  const ArticlesOverviewRoute() : super(name, path: '/articles-overview-page');

  static const String name = 'ArticlesOverviewRoute';
}

/// generated route for [_i4.ArticleDetailPage]
class ArticleDetailRoute extends _i6.PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute(
      {_i7.Key? key,
      required _i8.Article article,
      required _i9.UserArticleEngagement userArticleEngagement})
      : super(name,
            path: '/article-detail-page',
            args: ArticleDetailRouteArgs(
                key: key,
                article: article,
                userArticleEngagement: userArticleEngagement));

  static const String name = 'ArticleDetailRoute';
}

class ArticleDetailRouteArgs {
  const ArticleDetailRouteArgs(
      {this.key, required this.article, required this.userArticleEngagement});

  final _i7.Key? key;

  final _i8.Article article;

  final _i9.UserArticleEngagement userArticleEngagement;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{key: $key, article: $article, userArticleEngagement: $userArticleEngagement}';
  }
}

/// generated route for [_i5.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}
