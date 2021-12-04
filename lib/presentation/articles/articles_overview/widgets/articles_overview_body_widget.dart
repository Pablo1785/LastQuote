import '../../../../application/articles/article_watcher/article_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticlesOverviewBody extends StatelessWidget {
  const ArticlesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleWatcherBloc, ArticleWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (loadSuccessState) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final article = loadSuccessState.articles[index];
                if (article.failureOption.isSome()) {
                  return Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  );
                } else {
                  return Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          article.title.getOrCrash(),
                        ),
                        Text(
                          article.mediaType.getOrCrash(),
                        ),
                        Expanded(
                          child: InkWell(
                            child: const Center(
                              child: Text(
                                'Open in Browser',
                              ),
                            ),
                            onTap: () => launch(
                              article.url.getOrCrash(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
              itemCount: loadSuccessState.articles.size,
            );
          },
          loadFailure: (loadFailureState) {
            return Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                  loadFailureState.articleFailure.toString(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
