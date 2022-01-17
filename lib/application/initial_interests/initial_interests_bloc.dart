import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'initial_interests_event.dart';
part 'initial_interests_state.dart';
part 'initial_interests_bloc.freezed.dart';

@injectable
class InitialInterestsBloc
    extends Bloc<InitialInterestsEvent, InitialInterestsState> {
  InitialInterestsBloc() : super(_Initial()) {
    on<InitialInterestsEvent>((event, emit) async {
      await event.map(
        started: (e) async {},
        getMostPopularTermsStarted: (e) async {
          emit(
            const InitialInterestsState.loadInProgress(),
          );
        },
        interestsReceived: (e) async {},
      );
    });
  }
}
