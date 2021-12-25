import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/application/article_sources/article_source_picker/article_source_picker_bloc.dart';
import 'package:ddd/application/articles/article_watcher/article_watcher_bloc.dart';
import 'package:ddd/application/recommendations/recommendation_watcher/recommendation_watcher_bloc.dart';
import 'package:ddd/domain/article_sources/article_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';

class ArticleSourcePickerDrawer extends HookWidget {
  const ArticleSourcePickerDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: BlocBuilder<ArticleSourcePickerBloc, ArticleSourcePickerState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(
                height: 30,
                width: 40,
                color: Colors.amber,
                child: const Text("Should never be visible"),
              ),
              loadFailure: (failure) => Container(
                height: 30,
                width: 40,
                color: Colors.red,
                child: Text(
                  "Initial article source loading failed: " +
                      failure.articleSourceFailure.toString(),
                ),
              ),
              loadInProgress: (_) => const LinearProgressIndicator(),
              loadSuccess: (loadSuccessState) {
                return ArticleSourceFilterOrLoadSuccessList(
                  loadSuccessState.articleSources,
                  -1,
                );
              },
              filterInProgress: (_) => const CircularProgressIndicator(),
              filterFailure: (failure) => Container(
                height: 30,
                width: 40,
                color: Colors.red,
                child: Text("Filtering failed: " +
                    failure.articleSourceFailure.toString()),
              ),
              filterSuccess: (filterSuccessState) {
                context.read<RecommendationWatcherBloc>().add(
                      filterSuccessState.pickedSourceIndex >= 0
                          ? RecommendationWatcherEvent
                              .watchFromSourceForCurrentUserStarted(
                              filterSuccessState.articleSources[
                                  filterSuccessState.pickedSourceIndex],
                            )
                          : const RecommendationWatcherEvent
                              .watchAllForCurrentUserStarted(),
                    );
                return ArticleSourceFilterOrLoadSuccessList(
                  filterSuccessState.articleSources,
                  filterSuccessState.pickedSourceIndex,
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ArticleSourceFilterOrLoadSuccessList extends StatelessWidget {
  final KtList<ArticleSource> _articleSources;
  final int _index;

  const ArticleSourceFilterOrLoadSuccessList(this._articleSources, this._index,
      {Key? key})
      : super(key: key);

  void _selectArticleSource(
    KtList<ArticleSource> articleSources,
    BuildContext context,
    int index,
  ) =>
      context.read<ArticleSourcePickerBloc>().add(
            ArticleSourcePickerEvent.filterClicked(
              right(articleSources),
              index,
            ),
          );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor.withAlpha(0x00),
        foregroundColor: Colors.grey[700],
        elevation: 0.0,
        title: const Text("Select source"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              context.read<ArticleSourcePickerBloc>().add(
                    ArticleSourcePickerEvent.clearFiltersClicked(
                      right(
                        _articleSources,
                      ),
                    ),
                  );
              context.read<RecommendationWatcherBloc>().add(
                    const RecommendationWatcherEvent
                        .watchAllForCurrentUserStarted(),
                  );
            },
            child: const Text("Clear selection"),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, articleSourceIndex) {
              int _localIndex = articleSourceIndex;
              return ListTile(
                onTap: () =>
                    _selectArticleSource(_articleSources, context, _localIndex),
                selected: _index == _localIndex,
                title: Text(
                  "Article source: " +
                      _articleSources[articleSourceIndex].name.getOrCrash(),
                ),
              );
            },
            itemCount: _articleSources.size,
          ),
        ],
      ),
    );
  }
}
