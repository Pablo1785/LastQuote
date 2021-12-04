// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/articles/article_actor/article_actor_bloc.dart' as _i3;
import 'application/articles/article_watcher/article_watcher_bloc.dart' as _i14;
import 'application/auth/auth_bloc.dart' as _i15;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'domain/article_sources/i_article_source_repository.dart' as _i16;
import 'domain/article_sources/i_article_source_status_repository.dart' as _i9;
import 'domain/articles/i_article_repository.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i11;
import 'infrastructure/article_sources/article_source_repository.dart' as _i17;
import 'infrastructure/article_sources/article_source_status_repository.dart'
    as _i10;
import 'infrastructure/articles/article_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i12;
import 'infrastructure/core/firebase_injectable_module.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.ArticleActorBloc>(() => _i3.ArticleActorBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IArticleRepository>(
      () => _i8.ArticleRepository(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IArticleSourceStatusRepository>(
      () => _i10.ArticleSourceStatusRepository(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i14.ArticleWatcherBloc>(
      () => _i14.ArticleWatcherBloc(get<_i7.IArticleRepository>()));
  gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i16.IArticleSourceRepository>(() =>
      _i17.ArticleSourceRepository(get<_i5.FirebaseFirestore>(),
          get<_i9.IArticleSourceStatusRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i18.FirebaseInjectableModule {}
