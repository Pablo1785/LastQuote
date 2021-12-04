import '../../../../application/articles/article_watcher/article_watcher_bloc.dart';
import '../../../../domain/article_sources/article_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleSourceSwitch extends HookWidget {
  const ArticleSourceSwitch(this.articleSources, {Key? key}) : super(key: key);

  final List<ArticleSource> articleSources;

  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);
    final currentArticleSourceIndex = useState(-1);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
        onTap: () {
          toggleState.value = !toggleState.value;
          context.read<ArticleWatcherBloc>().add(
                toggleState.value
                    ? ArticleWatcherEvent.watchFromSourceStarted(
                        articleSources[currentArticleSourceIndex.value],
                      )
                    : const ArticleWatcherEvent.watchAllStarted(),
              );
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 125),
          transitionBuilder: (child, animation) => FadeTransition(
            child: child,
            opacity: animation,
          ),
          child: toggleState.value
              ? const Icon(
                  Icons.filter_alt_rounded,
                  key: Key('rounded'),
                )
              : const Icon(
                  Icons.filter_alt_outlined,
                  key: Key('outlined'),
                ),
        ),
      ),
    );
  }
}
