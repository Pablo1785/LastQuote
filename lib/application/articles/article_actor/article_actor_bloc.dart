import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_actor_event.dart';
part 'article_actor_state.dart';
part 'article_actor_bloc.freezed.dart';

class ArticleActorBloc extends Bloc<ArticleActorEvent, ArticleActorState> {
  ArticleActorBloc() : super(_Initial()) {
    on<ArticleActorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
