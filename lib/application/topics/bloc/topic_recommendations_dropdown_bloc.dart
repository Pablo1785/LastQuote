import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/article_term_counts/article_term_count_failure.dart';
import 'package:ddd/domain/article_term_counts/i_article_term_count_repository.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/articles/article_failure.dart';
import 'package:ddd/domain/articles/i_article_repository.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'topic_recommendations_dropdown_event.dart';
part 'topic_recommendations_dropdown_state.dart';
part 'topic_recommendations_dropdown_bloc.freezed.dart';

@injectable
class TopicRecommendationsDropdownBloc extends Bloc<
    TopicRecommendationsDropdownEvent, TopicRecommendationsDropdownState> {
  final IArticleTermCountRepository _iArticleTermCountRepository;
  final IArticleRepository _iArticleRepository;

  TopicRecommendationsDropdownBloc(
    this._iArticleTermCountRepository,
    this._iArticleRepository,
  ) : super(TopicRecommendationsDropdownState.hidden()) {
    on<TopicRecommendationsDropdownEvent>(
      (event, emit) async {
        await event.map(
          showRecommendationsPressed: (e) async {
            if (state.currentPos == e.index) {
              emit(
                TopicRecommendationsDropdownState.hidden(),
              );
              return;
            }
            emit(
              TopicRecommendationsDropdownState
                  .loadingRecommendationsForEngagementAtPos(
                e.index,
              ),
            );

            // Get data on top articles containing term
            final failureOrArticleTermCounts =
                await _iArticleTermCountRepository.getForTerm(
              e.termId,
              descending: true,
              limit: 5,
            );

            // Emit failure state if applicable
            await failureOrArticleTermCounts.fold(
              (failure) async => emit(
                TopicRecommendationsDropdownState
                    .showingFailureForEngagementAtPos(
                  e.index,
                  none(),
                  some(failure),
                ),
              ),
              (articleTermCounts) async {
                // Get top Articles
                final failureOrArticles = await _iArticleRepository.getById(
                  articleTermCounts.map(
                    (atc) => atc.articleId.getOrCrash(),
                  ),
                );
                // Emit Article failure or success
                failureOrArticles.fold(
                  (articleFailure) => emit(
                    TopicRecommendationsDropdownState
                        .showingFailureForEngagementAtPos(
                      e.index,
                      some(articleFailure),
                      none(),
                    ),
                  ),
                  (articles) => emit(
                    TopicRecommendationsDropdownState
                        .showingRecommendationsForEngagementAtPos(
                      e.index,
                      articles,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
