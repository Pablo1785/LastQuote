import 'package:auto_route/auto_route.dart';
import 'package:ddd/presentation/articles/article_detail/article_detail_page.dart';
import 'package:ddd/presentation/routes/app_router.gr.dart';

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
                  return Card(
                    child: ListTile(
                      leading: () {
                        switch (article.mediaType.getOrCrash()) {
                          case 'social_media_post':
                            return const Icon(Icons.group_outlined);
                            break;
                          case 'encyclopedia_entry':
                            return const Icon(Icons.article_outlined);
                            break;
                          default:
                            return const Icon(Icons.article_outlined);
                            break;
                        }
                      }(),
                      title: Text(
                        article.title.getOrCrash(),
                      ),
                      subtitle: Text(
                        article.url.getOrCrash(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.open_in_browser),
                        onPressed: () => launch(
                          article.url.getOrCrash(),
                        ),
                      ),
                      onTap: () {
                        AutoRouter.of(context).push(
                          ArticleDetailRoute(
                            article: article,
                          ),
                        );
                      },
                    ),
                  );
                }
              },
              itemCount: loadSuccessState.articles.size,
            );
          },
          loadFailure: (loadFailureState) {
            return Center(
              child: Column(
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 72,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    loadFailureState.articleFailure.toString(),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
