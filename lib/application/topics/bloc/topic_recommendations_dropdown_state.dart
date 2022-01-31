part of 'topic_recommendations_dropdown_bloc.dart';

@freezed
class TopicRecommendationsDropdownState
    with _$TopicRecommendationsDropdownState {
  const factory TopicRecommendationsDropdownState({
    required bool isShowingRecommendations,
    required bool isLoadingRecommendations,
    required Option<ArticleFailure> articleFailureOption,
    required Option<ArticleTermCountFailure> articleTermCountFailureOption,
    KtList<Article>? currentRecommendations,
    int? currentPos,
  }) = _TopicRecommendationsDropdownState;
  factory TopicRecommendationsDropdownState.hidden() =>
      TopicRecommendationsDropdownState(
        isShowingRecommendations: false,
        isLoadingRecommendations: false,
        articleFailureOption: none(),
        articleTermCountFailureOption: none(),
        currentPos: null,
      );
  factory TopicRecommendationsDropdownState.loadingRecommendationsForEngagementAtPos(
    int pos,
  ) =>
      TopicRecommendationsDropdownState(
        isShowingRecommendations: false,
        isLoadingRecommendations: true,
        articleFailureOption: none(),
        articleTermCountFailureOption: none(),
        currentPos: pos,
      );
  factory TopicRecommendationsDropdownState.showingRecommendationsForEngagementAtPos(
    int pos,
    KtList<Article> recommendations,
  ) =>
      TopicRecommendationsDropdownState(
        isShowingRecommendations: true,
        isLoadingRecommendations: false,
        articleFailureOption: none(),
        articleTermCountFailureOption: none(),
        currentRecommendations: recommendations,
        currentPos: pos,
      );

  factory TopicRecommendationsDropdownState.showingFailureForEngagementAtPos(
    int pos,
    Option<ArticleFailure> articleFailureOption,
    Option<ArticleTermCountFailure> articleTermCountFailureOption,
  ) =>
      TopicRecommendationsDropdownState(
        isShowingRecommendations: false,
        isLoadingRecommendations: false,
        articleFailureOption: articleFailureOption,
        articleTermCountFailureOption: articleTermCountFailureOption,
        currentPos: pos,
      );
}
