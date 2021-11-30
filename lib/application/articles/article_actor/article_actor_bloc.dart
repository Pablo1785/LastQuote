import 'package:bloc/bloc.dart';
import 'package:ddd/domain/articles/article_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_actor_event.dart';
part 'article_actor_state.dart';
part 'article_actor_bloc.freezed.dart';

class ArticleActorBloc extends Bloc<ArticleActorEvent, ArticleActorState> {
  ArticleActorBloc() : super(_Initial()) {
    on<ArticleActorEvent>((event, emit) async {
      await event.map(
          started: (_) {},
          liked: (_) async {
            //! Implement this to only emit failure state on actual failures!
            emit(
              const ArticleActorState.likeFailure(
                const ArticleFailure.unexpected(),
              ),
            );
          });
    });
  }
}
