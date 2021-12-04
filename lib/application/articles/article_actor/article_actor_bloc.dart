import 'package:bloc/bloc.dart';
import '../../../domain/articles/article_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'article_actor_event.dart';
part 'article_actor_state.dart';
part 'article_actor_bloc.freezed.dart';

@injectable
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
