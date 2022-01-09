import 'package:auto_route/auto_route.dart';
import 'package:ddd/presentation/core/quotes_logo.dart';
import 'package:ddd/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class InitialInterestsPage extends StatelessWidget {
  const InitialInterestsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Select all topics you are interested in'),
            ),
          ),
          Divider(),
          Wrap(
            children: List<Widget>.generate(
              100,
              (int index) {
                return ActionChip(
                  label: Text(
                    index.toString() + ' ' * (index % 17),
                  ),
                  onPressed: () {},
                );
              },
            ),
          )
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
                  AutoRouter.of(context).replaceNamed('/tab-view-page');
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
