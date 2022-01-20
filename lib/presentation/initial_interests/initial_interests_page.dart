import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/auth/auth_bloc.dart';
import 'package:ddd/application/user_term_data_source_engagements/user_term_data_source_engagement_actor/user_term_data_source_engagement_actor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/initial_interests/initial_interests_bloc.dart';
import '../../injection.dart';
import '../core/quotes_logo.dart';
import 'widgets/initial_interests_picker_widget.dart';

class InitialInterestsPage extends StatelessWidget {
  const InitialInterestsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InitialInterestsBloc>()
            ..add(
              const InitialInterestsEvent.getMostPopularTermsStarted(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<UserTermDataSourceEngagementActorBloc>(),
        ),
      ],
      child: BlocListener<UserTermDataSourceEngagementActorBloc,
          UserTermDataSourceEngagementActorState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            updateInProgress: (_) {},
            updateFinished: (_) {},
            preparingForUpdate: (e) {},
          );
        },
        child: Scaffold(
          appBar: AppBar(
            leadingWidth: 42,
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcATop,
                ),
                child: QuotesLogo(
                  size: 25,
                ),
              ),
            ),
            title: const Text('Your interests'),
          ),
          body: ListView(
            children: const [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Select all topics you are interested in'),
                ),
              ),
              Divider(),
              InitialInterestsPickerWidget(),
            ],
          ),
          persistentFooterButtons: [
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.close),
                        Text('Cancel'),
                      ],
                    ),
                    onPressed: () {
                      AutoRouter.of(context).replaceNamed('/tab-view-page');
                    },
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.check),
                        Text('Confirm'),
                      ],
                    ),
                    onPressed: () {
                      // context.read<UserTermDataSourceEngagementActorBloc>().add(UserTermDataSourceEngagementActorEvent.batchUpdateInitialInterestsStarted(termInitialInterestStatuses))
                      AutoRouter.of(context).replaceNamed('/tab-view-page');
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
