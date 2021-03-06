import 'package:auto_route/auto_route.dart';
import 'package:ddd/presentation/articles/article_detail/article_detail_page.dart';
import 'package:ddd/presentation/core/tab_view_page.dart';
import 'package:ddd/presentation/initial_interests/initial_interests_page.dart';
import 'package:ddd/presentation/settings/settings_page.dart';
import 'package:ddd/presentation/topic_details/topic_details_page.dart';
import '../articles/articles_overview/articles_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: TabViewPage),
    MaterialRoute(page: ArticlesOverviewPage),
    MaterialRoute(page: ArticleDetailPage),
    MaterialRoute(page: SettingsPage),
    MaterialRoute(page: InitialInterestsPage),
    MaterialRoute(page: TopicDetailsPage),
  ],
)
class $AppRouter {}
