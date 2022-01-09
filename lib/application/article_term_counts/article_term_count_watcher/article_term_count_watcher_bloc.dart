import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/article_term_counts/article_term_count.dart';
import 'package:ddd/domain/article_term_counts/article_term_count_failure.dart';
import 'package:ddd/domain/article_term_counts/i_article_term_count_repository.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'article_term_count_watcher_event.dart';
part 'article_term_count_watcher_state.dart';
part 'article_term_count_watcher_bloc.freezed.dart';

@injectable
class ArticleTermCountWatcherBloc
    extends Bloc<ArticleTermCountWatcherEvent, ArticleTermCountWatcherState> {
  final IArticleTermCountRepository _iArticleTermCountRepository;
  StreamSubscription<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>?
      _articleTermCountStreamSubscription;

  ArticleTermCountWatcherBloc(
    this._iArticleTermCountRepository,
  ) : super(const _Initial()) {
    on<ArticleTermCountWatcherEvent>((event, emit) async {
      await event.map(
        getForEachArticleStarted: (getForEachState) async {
          emit(
            const ArticleTermCountWatcherState.loadInProgress(),
          );

          await _articleTermCountStreamSubscription?.cancel();
          final failureOrArticleTermCounts =
              await _iArticleTermCountRepository.getForEachArticle(
            getForEachState.articles,
            descending: getForEachState.descending,
            limitPerArticle: getForEachState.limitPerArticle,
          );

          add(
            ArticleTermCountWatcherEvent.articleTermCountsReceived(
                failureOrArticleTermCounts),
          );
        },
        watchForArticlesStarted: (watchStartedState) async {
          emit(
            const ArticleTermCountWatcherState.loadInProgress(),
          );

          await _articleTermCountStreamSubscription?.cancel();
          _articleTermCountStreamSubscription = _iArticleTermCountRepository
              .watchForArticles(watchStartedState.articles)
              .listen(
                (failureOrArticleTermCounts) => add(
                  ArticleTermCountWatcherEvent.articleTermCountsReceived(
                    failureOrArticleTermCounts,
                  ),
                ),
              );
        },
        articleTermCountsReceived: (receivedState) async {
          emit(
            receivedState.failureOrArticleTermCounts.fold(
              (failure) => ArticleTermCountWatcherState.loadFailure(failure),
              (articleTermCounts) => ArticleTermCountWatcherState.loadSuccess(
                articleTermCounts,
              ),
            ),
          );
        },
      );
    });
  }
}
