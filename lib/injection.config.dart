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
    as _i26;
import 'application/articles/article_watcher/article_watcher_bloc.dart' as _i19;
import 'application/auth/auth_bloc.dart' as _i20;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i16;
import 'application/data_sources/data_source_status_picker/data_source_status_picker_bloc.dart'
    as _i27;
import 'application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart'
    as _i17;
import 'application/user_article_engagement/user_article_engagement_watcher/user_article_engagement_watcher_bloc.dart'
    as _i18;
import 'domain/article_sources/i_article_source_repository.dart' as _i22;
import 'domain/article_sources/i_article_source_status_repository.dart' as _i8;
import 'domain/articles/i_article_repository.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/data_sources/i_data_source_repository.dart' as _i24;
import 'domain/data_sources/i_data_source_status_repository.dart' as _i12;
import 'domain/user_article_engagements/i_user_article_engagement_repository.dart'
    as _i14;
import 'infrastructure/article_sources/article_source_repository.dart' as _i23;
import 'infrastructure/article_sources/article_source_status_repository.dart'
    as _i9;
import 'infrastructure/articles/article_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i28;
import 'infrastructure/core/firestore_helpers.dart' as _i21;
import 'infrastructure/data_sources/data_source_repository.dart' as _i25;
import 'infrastructure/data_sources/data_source_status_repository.dart' as _i13;
import 'infrastructure/user_article_engagements/user_article_engagement_repository.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.IAuthFacade>(() => _i11.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i12.IDataSourceStatusRepository>(
      () => _i13.DataSourceStatusRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.IUserArticleEngagementRepository>(
      () => _i15.UserArticleEngagementRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i16.SignInFormBloc>(
      () => _i16.SignInFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i17.UserArticleEngagementActorBloc>(() =>
      _i17.UserArticleEngagementActorBloc(
          get<_i14.IUserArticleEngagementRepository>()));
  gh.factory<_i18.UserArticleEngagementWatcherBloc>(() =>
      _i18.UserArticleEngagementWatcherBloc(
          get<_i14.IUserArticleEngagementRepository>()));
  gh.factory<_i19.ArticleWatcherBloc>(
      () => _i19.ArticleWatcherBloc(get<_i6.IArticleRepository>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i21.FirestoreHelper>(() => _i21.FirestoreHelper(
      get<_i10.IAuthFacade>(), get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i22.IArticleSourceRepository>(() =>
      _i23.ArticleSourceRepository(get<_i4.FirebaseFirestore>(),
          get<_i8.IArticleSourceStatusRepository>()));
  gh.lazySingleton<_i24.IDataSourceRepository>(() => _i25.DataSourceRepository(
      get<_i4.FirebaseFirestore>(), get<_i12.IDataSourceStatusRepository>()));
  gh.factory<_i26.ArticleSourcePickerBloc>(
      () => _i26.ArticleSourcePickerBloc(get<_i22.IArticleSourceRepository>()));
  gh.factory<_i27.DataSourceStatusPickerBloc>(() =>
      _i27.DataSourceStatusPickerBloc(get<_i24.IDataSourceRepository>(),
          get<_i12.IDataSourceStatusRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i28.FirebaseInjectableModule {}
