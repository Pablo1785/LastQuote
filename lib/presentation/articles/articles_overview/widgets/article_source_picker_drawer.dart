import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/application/article_sources/article_source_picker/article_source_picker_bloc.dart';
import 'package:ddd/application/articles/article_watcher/article_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ArticleSourcePickerDrawer extends HookWidget {
  const ArticleSourcePickerDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedArticleSourceIndex = useState(-1);

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
                  loadSuccessState,
                  false,
                );
              },
              filterInProgress: (_) => const CircularProgressIndicator(
                color: Colors.orange,
              ),
              filterFailure: (failure) => Container(
                height: 30,
                width: 40,
                color: Colors.red,
                child: Text("Filtering failed: " +
                    failure.articleSourceFailure.toString()),
              ),
              filterSuccess: (filterSuccessState) {
                context.read<ArticleWatcherBloc>().add(
                      filterSuccessState.pickedSourceIndex >= 0
                          ? ArticleWatcherEvent.watchFromSourceStarted(
                              filterSuccessState.articleSources[
                                  filterSuccessState.pickedSourceIndex],
                            )
                          : const ArticleWatcherEvent.watchAllStarted(),
                    );
                return ArticleSourceFilterOrLoadSuccessList(
                  filterSuccessState,
                  true,
                );
              },
            );
          },
        ),
      ),
    );
  }

  void _selectArticleSource(
      articleSourcePickerBlocState, BuildContext context, int index) {
    context.read<ArticleSourcePickerBloc>().add(
          ArticleSourcePickerEvent.filterClicked(
            right(articleSourcePickerBlocState.articleSources),
            index,
          ),
        );
  }
}

class ArticleSourceFilterOrLoadSuccessList extends StatelessWidget {
  final successState;
  final bool hasIndex;

  const ArticleSourceFilterOrLoadSuccessList(this.successState, this.hasIndex,
      {Key? key})
      : super(key: key);

  void _selectArticleSource(
    articleSourcePickerBlocState,
    BuildContext context,
    int index,
  ) =>
      context.read<ArticleSourcePickerBloc>().add(
            ArticleSourcePickerEvent.filterClicked(
              right(articleSourcePickerBlocState.articleSources),
              index,
            ),
          );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select source"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              context.read<ArticleSourcePickerBloc>().add(
                    ArticleSourcePickerEvent.clearFiltersClicked(
                      right(
                        successState.articleSources,
                      ),
                    ),
                  );
              context.read<ArticleWatcherBloc>().add(
                    const ArticleWatcherEvent.watchAllStarted(),
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
                    _selectArticleSource(successState, context, _localIndex),
                selected: hasIndex
                    ? successState.pickedSourceIndex == _localIndex
                    : false,
                title: Text(
                  "Article source: " +
                      successState.articleSources[articleSourceIndex].name
                          .getOrCrash(),
                ),
              );
            },
            itemCount: successState.articleSources.size,
          ),
        ],
      ),
    );
  }
}
