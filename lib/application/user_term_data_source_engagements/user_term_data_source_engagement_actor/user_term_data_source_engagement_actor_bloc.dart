import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_term_data_source_engagement_actor_event.dart';
part 'user_term_data_source_engagement_actor_state.dart';
part 'user_term_data_source_engagement_actor_bloc.freezed.dart';

class UserTermDataSourceEngagementActorBloc extends Bloc<UserTermDataSourceEngagementActorEvent, UserTermDataSourceEngagementActorState> {
  UserTermDataSourceEngagementActorBloc() : super(_Initial()) {
    on<UserTermDataSourceEngagementActorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
