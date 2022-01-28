// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:cloud_functions/cloud_functions.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/article_sources/article_source_picker/article_source_picker_bloc.dart'
    as _i45;
import 'application/article_term_counts/article_term_count_watcher/article_term_count_watcher_bloc.dart'
    as _i37;
import 'application/articles/article_watcher/article_watcher_bloc.dart' as _i38;
import 'application/auth/auth_bloc.dart' as _i39;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i32;
import 'application/data_ownership/data_ownership/data_ownership_bloc.dart'
    as _i40;
import 'application/data_sources/data_source_status_picker/data_source_status_picker_bloc.dart'
    as _i41;
import 'application/initial_interests/initial_interests_bloc.dart' as _i29;
import 'application/initial_interests/interests_picker/initial_interests_picker_bloc.dart'
    as _i30;
import 'application/recommendations/recommendation_watcher/recommendation_watcher_bloc.dart'
    as _i31;
import 'application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart'
    as _i33;
import 'application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart'
    as _i34;
import 'application/user_term_data_source_engagements/user_term_data_source_engagement_actor/user_term_data_source_engagement_actor_bloc.dart'
    as _i35;
import 'application/user_term_data_source_engagements/user_term_data_source_engagement_watcher/user_term_data_source_engagement_watcher_bloc.dart'
    as _i36;
import 'domain/article_sources/i_article_source_repository.dart' as _i43;
import 'domain/article_sources/i_article_source_status_repository.dart' as _i9;
import 'domain/article_term_counts/i_article_term_count_repository.dart'
    as _i11;
import 'domain/articles/i_article_repository.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i13;
import 'domain/data_ownership/i_data_ownership_facade.dart' as _i15;
import 'domain/data_sources/i_data_source_repository.dart' as _i17;
import 'domain/data_sources/i_data_source_status_repository.dart' as _i19;
import 'domain/recommendations/i_recommendation_repository.dart' as _i21;
import 'domain/term_engagements/i_term_engagement_repository.dart' as _i23;
import 'domain/user_article_engagements/i_user_article_engagement_repository.dart'
    as _i25;
import 'domain/user_term_data_source_engagement/i_user_term_data_source_engagement_repository.dart'
    as _i27;
import 'infrastructure/article_sources/article_source_repository.dart' as _i44;
import 'infrastructure/article_sources/article_source_status_repository.dart'
    as _i10;
import 'infrastructure/article_term_counts/article_term_count_repository.dart'
    as _i12;
import 'infrastructure/articles/article_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i14;
import 'infrastructure/core/firebase_injectable_module.dart' as _i46;
import 'infrastructure/core/firestore_helpers.dart' as _i42;
import 'infrastructure/data_ownership/data_ownership_facade.dart' as _i16;
import 'infrastructure/data_sources/data_source_repository.dart' as _i18;
import 'infrastructure/data_sources/data_source_status_repository.dart' as _i20;
import 'infrastructure/recommendations/recommendation_repository.dart' as _i22;
import 'infrastructure/term_engagements/term_engagement_repository.dart'
    as _i24;
import 'infrastructure/user_article_engagements/user_article_engagement_repository.dart'
    as _i26;
import 'infrastructure/user_term_data_source_engagements/user_term_data_source_engagement_repository.dart'
    as _i28; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.FirebaseFunctions>(
      () => firebaseInjectableModule.functions);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IArticleRepository>(
      () => _i8.ArticleRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IArticleSourceStatusRepository>(
      () => _i10.ArticleSourceStatusRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IArticleTermCountRepository>(
      () => _i12.ArticleTermCountRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i13.IAuthFacade>(() => _i14.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i15.IDataOwnershipFacade>(
      () => _i16.DataOwnershipFacade(get<_i5.FirebaseFunctions>()));
  gh.lazySingleton<_i17.IDataSourceRepository>(
      () => _i18.DataSourceRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i19.IDataSourceStatusRepository>(
      () => _i20.DataSourceStatusRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i21.IRecommendationRepository>(
      () => _i22.RecommendationRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i23.ITermEngagementRepository>(
      () => _i24.TermEngagementRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i25.IUserArticleEngagementRepository>(
      () => _i26.UserArticleEngagementRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i27.IUserTermDataSourceEngagementRepository>(() =>
      _i28.UserTermDataSourceEngagementRepository(
          get<_i4.FirebaseFirestore>()));
  gh.factory<_i29.InitialInterestsBloc>(
      () => _i29.InitialInterestsBloc(get<_i23.ITermEngagementRepository>()));
  gh.factory<_i30.InitialInterestsPickerBloc>(() =>
      _i30.InitialInterestsPickerBloc(
          get<_i27.IUserTermDataSourceEngagementRepository>()));
  gh.factory<_i31.RecommendationWatcherBloc>(() =>
      _i31.RecommendationWatcherBloc(get<_i21.IRecommendationRepository>()));
  gh.factory<_i32.SignInFormBloc>(
      () => _i32.SignInFormBloc(get<_i13.IAuthFacade>()));
  gh.factory<_i33.UserArticleEngagementActorBloc>(() =>
      _i33.UserArticleEngagementActorBloc(
          get<_i25.IUserArticleEngagementRepository>()));
  gh.factory<_i34.UserArticleEngagementWatcherBloc>(() =>
      _i34.UserArticleEngagementWatcherBloc(
          get<_i25.IUserArticleEngagementRepository>()));
  gh.factory<_i35.UserTermDataSourceEngagementActorBloc>(() =>
      _i35.UserTermDataSourceEngagementActorBloc(get<_i4.FirebaseFirestore>(),
          get<_i27.IUserTermDataSourceEngagementRepository>()));
  gh.factory<_i36.UserTermDataSourceEngagementWatcherBloc>(() =>
      _i36.UserTermDataSourceEngagementWatcherBloc(
          get<_i27.IUserTermDataSourceEngagementRepository>()));
  gh.factory<_i37.ArticleTermCountWatcherBloc>(() =>
      _i37.ArticleTermCountWatcherBloc(
          get<_i11.IArticleTermCountRepository>()));
  gh.factory<_i38.ArticleWatcherBloc>(
      () => _i38.ArticleWatcherBloc(get<_i7.IArticleRepository>()));
  gh.factory<_i39.AuthBloc>(() => _i39.AuthBloc(get<_i13.IAuthFacade>()));
  gh.factory<_i40.DataOwnershipBloc>(
      () => _i40.DataOwnershipBloc(get<_i15.IDataOwnershipFacade>()));
  gh.factory<_i41.DataSourceStatusPickerBloc>(() =>
      _i41.DataSourceStatusPickerBloc(get<_i17.IDataSourceRepository>(),
          get<_i19.IDataSourceStatusRepository>()));
  gh.factory<_i42.FirestoreHelper>(() => _i42.FirestoreHelper(
      get<_i13.IAuthFacade>(), get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i43.IArticleSourceRepository>(() =>
      _i44.ArticleSourceRepository(get<_i4.FirebaseFirestore>(),
          get<_i9.IArticleSourceStatusRepository>()));
  gh.factory<_i45.ArticleSourcePickerBloc>(
      () => _i45.ArticleSourcePickerBloc(get<_i43.IArticleSourceRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i46.FirebaseInjectableModule {}
