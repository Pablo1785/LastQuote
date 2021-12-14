import 'package:ddd/application/user_article_engagement/user_article_engagement_actor/user_article_engagement_actor_bloc.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:shimmer/shimmer.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key? key,
    required this.userArticleEngagement,
  }) : super(key: key);

  final UserArticleEngagement userArticleEngagement;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        userArticleEngagement.isLiked
            ? Icons.thumb_up_alt
            : Icons.thumb_up_alt_outlined,
      ),
      onPressed: () => context.read<UserArticleEngagementActorBloc>().add(
            UserArticleEngagementActorEvent.likePressed(
              userArticleEngagement,
            ),
          ),
    );
  }
}
