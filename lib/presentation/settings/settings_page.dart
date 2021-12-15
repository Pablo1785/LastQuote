import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/data_sources/data_source_status_picker/data_source_status_picker_bloc.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/data_sources/data_source_status.dart';
import 'package:ddd/presentation/core/shimmering_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../injection.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DataSourceStatusPickerBloc>(
          create: (_) => getIt<DataSourceStatusPickerBloc>()
            ..add(
              const DataSourceStatusPickerEvent.initialLoadStarted(),
            ),
        ),
      ],
      child:
          BlocListener<DataSourceStatusPickerBloc, DataSourceStatusPickerState>(
        listener: (context, state) {
          state.maybeMap(
            loadFailureSources: (failure) {
              FlushbarHelper.createError(
                message: failure.dataSourceFailure.map(
                  unexpected: (_) => 'Unexpected error',
                  insufficientPermissions: (_) => 'Permission error',
                  sourceDisabled: (_) => 'Source disabled',
                  noActiveSource: (_) => 'No active source',
                ),
              ).show(context);
            },
            loadFailureStatuses: (failure) {
              FlushbarHelper.createError(
                message: failure.dataSourceFailure.map(
                  unexpected: (_) => 'Unexpected error',
                  insufficientPermissions: (_) => 'Permission error',
                  sourceDisabled: (_) => 'Source disabled',
                  noActiveSource: (_) => 'No active source',
                ),
              ).show(context);
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: AppBar(),
          body: BlocBuilder<DataSourceStatusPickerBloc,
              DataSourceStatusPickerState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Container(),
                loadInProgressSources: (_) => const ShimmeringListWidget(),
                loadSuccessSources: (_) => const ShimmeringListWidget(),
                loadFailureSources: (_) => const ShimmeringListWidget(),
                loadInProgressStatuses: (_) => const ShimmeringListWidget(),
                loadSuccessStatuses: (loadSuccessState) =>
                    DataSourceStatusLoadSuccessWidget(
                  dataSources: dataSources,
                  dataSourceStatuses: dataSourceStatuses,
                ),
                loadFailureStatuses: (_) => const ShimmeringListWidget(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class DataSourceLoadSuccessWidget extends StatelessWidget {
  const DataSourceLoadSuccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DataSourceStatusLoadSuccessWidget extends HookWidget {
  const DataSourceStatusLoadSuccessWidget({
    Key? key,
    required this.dataSources,
    required this.dataSourceStatuses,
  }) : super(key: key);

  final KtList<DataSource> dataSources;
  final KtList<DataSourceStatus> dataSourceStatuses;

  @override
  Widget build(BuildContext context) {
    final checked = useState(
      dataSourceStatuses
          .map((dataSourceStatus) => dataSourceStatus.isEnabled)
          .asList(),
    );
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final dataSource = dataSources[index];
        if (dataSource.failureOption.isSome()) {
          return Container(
            color: Colors.red,
            width: 100,
            height: 100,
          );
        } else {
          final dataSourceStatus = dataSourceStatuses.firstOrNull(
                (element) =>
                    element.dataSourceId.getOrCrash() ==
                    dataSource.id.getOrCrash(),
              ) ??
              DataSourceStatus.empty();
          return Card(
            child: ListTile(
              leading: Checkbox(
                value: dataSourceStatus.isEnabled,
                onChanged: (value) {
                  checked.value[index] = value ?? false;
                },
              ),
              title: Text(
                dataSource.name.getOrCrash(),
              ),
              subtitle: Text(
                dataSource.url.getOrCrash(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () async {
                await launch(dataSource.url.getOrCrash());
              },
            ),
          );
        }
      },
      itemCount: dataSources.size,
    );
  }
}
