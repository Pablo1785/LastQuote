import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/article_sources/article_source.dart';
import 'package:ddd/domain/article_sources/article_source_failure.dart';
import 'package:ddd/domain/article_sources/i_article_source_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'article_source_picker_event.dart';
part 'article_source_picker_state.dart';
part 'article_source_picker_bloc.freezed.dart';

@injectable
class ArticleSourcePickerBloc
    extends Bloc<ArticleSourcePickerEvent, ArticleSourcePickerState> {
  final IArticleSourceRepository _articleSourceRepository;

  ArticleSourcePickerBloc(
    this._articleSourceRepository,
  ) : super(const _Initial()) {
    on<ArticleSourcePickerEvent>(
      (event, emit) async {
        await event.map(
          initialLoadStarted: (_) async {
            emit(
              const ArticleSourcePickerState.loadInProgress(),
            );
            final failureOrEnabledArticleSources =
                await _articleSourceRepository.getEnabledByUser();

            // Initially no source is picked, signified by negative index
            add(
              ArticleSourcePickerEvent.articleSourcesReceived(
                failureOrEnabledArticleSources,
              ),
            );
          },
          articleSourcesReceived: (e) {
            emit(
              e.failureOrEnabledArticleSources.fold(
                (failure) => ArticleSourcePickerState.loadFailure(
                  failure,
                ),
                (enabledArticleSources) => ArticleSourcePickerState.loadSuccess(
                  enabledArticleSources,
                ),
              ),
            );
          },
          filterClicked: (e) {
            emit(
              const ArticleSourcePickerState.filterInProgress(),
            );
            emit(
              e.failureOrEnabledArticleSources.fold(
                (failure) => ArticleSourcePickerState.filterFailure(
                  failure,
                ),
                (enabledArticleSources) =>
                    ArticleSourcePickerState.filterSuccess(
                  enabledArticleSources,
                  e.pickedSourceIndex,
                ),
              ),
            );
          },
          clearFiltersClicked: (e) {
            add(
              ArticleSourcePickerEvent.articleSourcesReceived(
                e.failureOrEnabledArticleSources,
              ),
            );
          },
        );
      },
    );
  }
}
