import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key? key,
    required this.userArticleEngagement,
    required this.userArticleEngagementActorBloc,
  }) : super(key: key);

  final UserArticleEngagement userArticleEngagement;
  final UserArticleEngagementActorBloc userArticleEngagementActorBloc;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: userArticleEngagement.isLiked
          ? const Icon(Icons.thumb_up_alt)
          : const Icon(Icons.thumb_up_alt_outlined),
      onPressed: () => userArticleEngagementActorBloc.add(
        UserArticleEngagementActorEvent.likePressed(userArticleEngagement),
      ),
    );
  }
}
