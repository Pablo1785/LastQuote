import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/article_sources/article_source.dart';
import '../../../domain/articles/article.dart';
import '../../../domain/articles/article_failure.dart';
import '../../../domain/articles/i_article_repository.dart';

part 'article_watcher_bloc.freezed.dart';
part 'article_watcher_event.dart';
part 'article_watcher_state.dart';

@injectable
class ArticleWatcherBloc
    extends Bloc<ArticleWatcherEvent, ArticleWatcherState> {
  final IArticleRepository _iArticleRepository;

  StreamSubscription<Either<ArticleFailure, KtList<Article>>>?
      _articleStreamSubscription;

  ArticleWatcherBloc(
    this._iArticleRepository,
  ) : super(const ArticleWatcherState.initial()) {
    on<ArticleWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(
            const ArticleWatcherState.loadInProgress(),
          );
          await _articleStreamSubscription?.cancel();
          _articleStreamSubscription = _iArticleRepository.watchAll().listen(
                (failureOrArticles) => add(
                  ArticleWatcherEvent.articlesReceived(failureOrArticles),
                ),
              );
        },
        watchFromSourceStarted: (e) async {
          emit(
            const ArticleWatcherState.loadInProgress(),
          );
          await _articleStreamSubscription?.cancel();
          _articleStreamSubscription =
              _iArticleRepository.watchFromSource(e.articleSource).listen(
                    (failureOrArticles) => add(
                      ArticleWatcherEvent.articlesReceived(failureOrArticles),
                    ),
                  );
        },
        articlesReceived: (e) async {
          emit(
            e.failureOrArticles.fold(
              (failure) => ArticleWatcherState.loadFailure(failure),
              (articles) => ArticleWatcherState.loadSuccess(articles),
            ),
          );
        },
        watchByIdStarted: (e) async {
          emit(
            const ArticleWatcherState.loadInProgress(),
          );
          await _articleStreamSubscription?.cancel();
          _articleStreamSubscription = _iArticleRepository
              .watchById(
                e.articleIds,
              )
              .listen(
                (failureOrArticles) => add(
                  ArticleWatcherEvent.articlesReceived(failureOrArticles),
                ),
              );
        },
        watchingCancelled: (e) async {
          await _articleStreamSubscription?.cancel();
          emit(
            const ArticleWatcherState.initial(),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _articleStreamSubscription?.cancel();
    return super.close();
  }
}
