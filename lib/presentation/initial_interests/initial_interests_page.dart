import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/initial_interests/initial_interests_bloc.dart';
import '../../application/initial_interests/interests_picker/initial_interests_picker_bloc.dart';
import '../../injection.dart';
import '../core/quotes_logo.dart';
import 'widgets/initial_interests_picker_widget.dart';

class InitialInterestsPage extends StatelessWidget {
  const InitialInterestsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InitialInterestsPickerBloc>(),
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
        persistentFooterButtons: [
          BlocBuilder<InitialInterestsPickerBloc, InitialInterestsPickerState>(
            builder: (context, state) {
              return Row(
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
                        context.read<InitialInterestsPickerBloc>().add(
                              const InitialInterestsPickerEvent.cancelPressed(),
                            );
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
                        context.read<InitialInterestsPickerBloc>().add(
                              const InitialInterestsPickerEvent
                                  .confirmPressed(),
                            );
                        AutoRouter.of(context).replaceNamed('/tab-view-page');
                      },
                    ),
                  ),
                  // if (context
                  //     .read<InitialInterestsPickerBloc>()
                  //     .state
                  //     .isSubmitting) ...[
                  //   const SizedBox(
                  //     height: 8,
                  //   ),
                  //   const LinearProgressIndicator(
                  //     value: null,
                  //   ),
                  // ]
                ],
              );
            },
          )
        ],
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<InitialInterestsBloc>()
                ..add(
                  const InitialInterestsEvent.getMostPopularTermsStarted(),
                ),
            ),
          ],
          child: ListView(
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
        ),
      ),
    );
  }
}
