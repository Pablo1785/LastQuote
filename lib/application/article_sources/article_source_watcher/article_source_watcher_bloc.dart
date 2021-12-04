import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_source_watcher_event.dart';
part 'article_source_watcher_state.dart';
part 'article_source_watcher_bloc.freezed.dart';

class ArticleSourceWatcherBloc extends Bloc<ArticleSourceWatcherEvent, ArticleSourceWatcherState> {
  ArticleSourceWatcherBloc() : super(_Initial()) {
    on<ArticleSourceWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
