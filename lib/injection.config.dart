// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/article_sources/article_source_picker/article_source_picker_bloc.dart'
    as _i41;
import 'application/article_term_counts/article_term_count_watcher/article_term_count_watcher_bloc.dart'
    as _i34;
import 'application/articles/article_watcher/article_watcher_bloc.dart' as _i35;
import 'application/auth/auth_bloc.dart' as _i36;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i29;
import 'application/data_sources/data_source_status_picker/data_source_status_picker_bloc.dart'
    as _i37;
import 'application/initial_interests/initial_interests_bloc.dart' as _i26;
import 'application/initial_interests/interests_picker/initial_interests_picker_bloc.dart'
    as _i27;
import 'application/recommendations/recommendation_watcher/recommendation_watcher_bloc.dart'
    as _i28;
import 'application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart'
    as _i30;
import 'application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart'
    as _i31;
import 'application/user_term_data_source_engagements/user_term_data_source_engagement_actor/user_term_data_source_engagement_actor_bloc.dart'
    as _i32;
import 'application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart'
    as _i33;
import 'domain/article_sources/i_article_source_repository.dart' as _i39;
import 'domain/article_sources/i_article_source_status_repository.dart' as _i8;
import 'domain/article_term_counts/i_article_term_count_repository.dart'
    as _i10;
import 'domain/articles/i_article_repository.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i12;
import 'domain/data_sources/i_data_source_repository.dart' as _i14;
import 'domain/data_sources/i_data_source_status_repository.dart' as _i16;
import 'domain/recommendations/i_recommendation_repository.dart' as _i18;
import 'domain/term_engagements/i_term_engagement_repository.dart' as _i20;
import 'domain/user_article_engagements/i_user_article_engagement_repository.dart'
    as _i22;
import 'domain/user_term_data_source_engagement/i_user_term_data_source_engagement_repository.dart'
    as _i24;
import 'infrastructure/article_sources/article_source_repository.dart' as _i40;
import 'infrastructure/article_sources/article_source_status_repository.dart'
    as _i9;
import 'infrastructure/article_term_counts/article_term_count_repository.dart'
    as _i11;
import 'infrastructure/articles/article_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i13;
import 'infrastructure/core/firebase_injectable_module.dart' as _i42;
import 'infrastructure/core/firestore_helpers.dart' as _i38;
import 'infrastructure/data_sources/data_source_repository.dart' as _i15;
import 'infrastructure/data_sources/data_source_status_repository.dart' as _i17;
import 'infrastructure/recommendations/recommendation_repository.dart' as _i19;
import 'infrastructure/term_engagements/term_engagement_repository.dart'
    as _i21;
import 'infrastructure/user_article_engagements/user_article_engagement_repository.dart'
    as _i23;
import 'infrastructure/user_term_data_source_engagements/user_term_data_source_engagement_repository.dart'
    as _i25; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IArticleRepository>(
      () => _i7.ArticleRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IArticleSourceStatusRepository>(
      () => _i9.ArticleSourceStatusRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IArticleTermCountRepository>(
      () => _i11.ArticleTermCountRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IAuthFacade>(() => _i13.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i14.IDataSourceRepository>(
      () => _i15.DataSourceRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i16.IDataSourceStatusRepository>(
      () => _i17.DataSourceStatusRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i18.IRecommendationRepository>(
      () => _i19.RecommendationRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i20.ITermEngagementRepository>(
      () => _i21.TermEngagementRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i22.IUserArticleEngagementRepository>(
      () => _i23.UserArticleEngagementRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i24.IUserTermDataSourceEngagementRepository>(() =>
      _i25.UserTermDataSourceEngagementRepository(
          get<_i4.FirebaseFirestore>()));
  gh.factory<_i26.InitialInterestsBloc>(
      () => _i26.InitialInterestsBloc(get<_i20.ITermEngagementRepository>()));
  gh.factory<_i27.InitialInterestsPickerBloc>(() =>
      _i27.InitialInterestsPickerBloc(
          get<_i24.IUserTermDataSourceEngagementRepository>()));
  gh.factory<_i28.RecommendationWatcherBloc>(() =>
      _i28.RecommendationWatcherBloc(get<_i18.IRecommendationRepository>()));
  gh.factory<_i29.SignInFormBloc>(
      () => _i29.SignInFormBloc(get<_i12.IAuthFacade>()));
  gh.factory<_i30.UserArticleEngagementActorBloc>(() =>
      _i30.UserArticleEngagementActorBloc(
          get<_i22.IUserArticleEngagementRepository>()));
  gh.factory<_i31.UserArticleEngagementWatcherBloc>(() =>
      _i31.UserArticleEngagementWatcherBloc(
          get<_i22.IUserArticleEngagementRepository>()));
  gh.factory<_i32.UserTermDataSourceEngagementActorBloc>(() =>
      _i32.UserTermDataSourceEngagementActorBloc(get<_i4.FirebaseFirestore>(),
          get<_i24.IUserTermDataSourceEngagementRepository>()));
  gh.factory<_i33.UserTermDataSourceEngagementWatcherBloc>(() =>
      _i33.UserTermDataSourceEngagementWatcherBloc(
          get<_i24.IUserTermDataSourceEngagementRepository>()));
  gh.factory<_i34.ArticleTermCountWatcherBloc>(() =>
      _i34.ArticleTermCountWatcherBloc(
          get<_i10.IArticleTermCountRepository>()));
  gh.factory<_i35.ArticleWatcherBloc>(
      () => _i35.ArticleWatcherBloc(get<_i6.IArticleRepository>()));
  gh.factory<_i36.AuthBloc>(() => _i36.AuthBloc(get<_i12.IAuthFacade>()));
  gh.factory<_i37.DataSourceStatusPickerBloc>(() =>
      _i37.DataSourceStatusPickerBloc(get<_i14.IDataSourceRepository>(),
          get<_i16.IDataSourceStatusRepository>()));
  gh.factory<_i38.FirestoreHelper>(() => _i38.FirestoreHelper(
      get<_i12.IAuthFacade>(), get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i39.IArticleSourceRepository>(() =>
      _i40.ArticleSourceRepository(get<_i4.FirebaseFirestore>(),
          get<_i8.IArticleSourceStatusRepository>()));
  gh.factory<_i41.ArticleSourcePickerBloc>(
      () => _i41.ArticleSourcePickerBloc(get<_i39.IArticleSourceRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i42.FirebaseInjectableModule {}
