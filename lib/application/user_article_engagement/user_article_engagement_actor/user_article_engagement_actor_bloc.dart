import 'package:bloc/bloc.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_article_engagement_actor_event.dart';
part 'user_article_engagement_actor_state.dart';
part 'user_article_engagement_actor_bloc.freezed.dart';

@injectable
class UserArticleEngagementActorBloc extends Bloc<
    UserArticleEngagementActorEvent, UserArticleEngagementActorState> {
  UserArticleEngagementActorBloc() : super(_Initial()) {
    on<UserArticleEngagementActorEvent>((event, emit) async {
      await event.map(
        sharePressed: (_) {},
        likePressed: (_) {},
        dismissPressed: (_) {},
        openPressed: (_) {},
      );
    });
  }
}
