import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ddd/application/data_ownership/data_ownership/data_ownership_bloc.dart';
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
        BlocProvider<DataOwnershipBloc>(
          create: (_) => getIt<DataOwnershipBloc>(),
        ),
      ],
      child:
          BlocListener<DataSourceStatusPickerBloc, DataSourceStatusPickerState>(
        listener: (context, state) {
          state.maybeMap(
            loadFailureSources: (failure) {
              FlushbarHelper.createError(
                message: failure.dataSourceFailure.map(
                  unexpected: (_) => 'Source: Unexpected error',
                  insufficientPermissions: (_) => 'Source: Permission error',
                  sourceDisabled: (_) => 'Source: Source disabled',
                  noActiveSource: (_) => 'Source: No active source',
                  documentNotFound: (_) => 'Source: Document not found error',
                ),
              ).show(context);
            },
            loadFailureStatuses: (failure) {
              FlushbarHelper.createError(
                message: failure.dataSourceFailure.map(
                  unexpected: (_) => 'Status: Unexpected error',
                  insufficientPermissions: (_) => 'Status: Permission error',
                  sourceDisabled: (_) => 'Status: Source disabled',
                  noActiveSource: (_) => 'Status: No active source',
                  documentNotFound: (_) => 'Status: Document not found error',
                ),
              ).show(context);
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              BlocBuilder<DataSourceStatusPickerBloc,
                  DataSourceStatusPickerState>(
                builder: (context, state) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<DataSourceStatusPickerBloc>().add(
                            const DataSourceStatusPickerEvent
                                .initialLoadStarted(),
                          );
                    },
                    child: _mapDataSourceStatusPickerStateToWidget(
                      state,
                      context,
                    ),
                  );
                },
              ),
              BlocListener<DataOwnershipBloc, DataOwnershipState>(
                listener: (context, state) {
                  state.map(
                    initial: (_) {},
                    deleteUserDataWaitingForConfirmation: (_) {},
                    deleteUserDataInProgress: (_) {},
                    deleteUserDataSuccess: (_) {},
                    deleteUserDataFailure: (_) {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mapDataSourceStatusPickerStateToWidget(
      DataSourceStatusPickerState state, BuildContext context) {
    return state.map(
      initial: (_) => Container(),
      loadInProgressSources: (_) => const ShimmeringListWidget(),
      loadSuccessSources: (loadSuccessState) => DataSourceLoadSuccessWidget(
        dataSources: loadSuccessState.dataSources,
      ),
      loadFailureSources: (_) => const Center(
        child: Icon(
          Icons.error_outline,
          size: 72,
        ),
      ),
      loadInProgressStatuses: (loadInProgressStateStatuses) =>
          DataSourceLoadSuccessWidget(
        dataSources: loadInProgressStateStatuses.dataSources,
      ),
      loadSuccessAll: (loadSuccessState) => DataSourceStatusLoadSuccessWidget(
        dataSources: loadSuccessState.dataSources,
        dataSourceStatuses: loadSuccessState.dataSourceStatuses,
      ),
      loadFailureStatuses: (loadFailureStateStatuses) {
        FlushbarHelper.createError(
          message: loadFailureStateStatuses.dataSourceFailure.map(
            unexpected: (_) => 'Status: Unexpected error',
            insufficientPermissions: (_) => 'Status: Permission error',
            sourceDisabled: (_) => 'Status: Source disabled',
            noActiveSource: (_) => 'Status: No active source',
            documentNotFound: (_) => 'Status: Document not found error',
          ),
        ).show(context);
        return DataSourceLoadSuccessWidget(
          dataSources: loadFailureStateStatuses.dataSources,
        );
      },
      updateFailureStatuses: (updateFailureState) {
        FlushbarHelper.createError(
          message: updateFailureState.dataSourceFailure.map(
            unexpected: (_) => 'Status: Unexpected error',
            insufficientPermissions: (_) => 'Status: Permission error',
            sourceDisabled: (_) => 'Status: Source disabled',
            noActiveSource: (_) => 'Status: No active source',
            documentNotFound: (_) => 'Status: Document not found error',
          ),
        ).show(context);
        return DataSourceStatusLoadSuccessWidget(
          dataSources: updateFailureState.dataSources,
          dataSourceStatuses: updateFailureState.dataSourceStatuses,
        );
      },
      updateInProgressStatuses: (updateInProgressState) =>
          DataSourceStatusLoadSuccessWidget(
        dataSources: updateInProgressState.dataSources,
        dataSourceStatuses: updateInProgressState.dataSourceStatuses,
      ),
    );
  }
}

class DataSourceLoadSuccessWidget extends StatelessWidget {
  const DataSourceLoadSuccessWidget({
    Key? key,
    required this.dataSources,
  }) : super(key: key);

  final KtList<DataSource> dataSources;

  @override
  Widget build(BuildContext context) {
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
          return Card(
            child: ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.check_box_outline_blank_outlined,
                ),
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

class DataSourceStatusLoadInProgressWidget extends StatelessWidget {
  const DataSourceStatusLoadInProgressWidget({
    Key? key,
    required this.dataSources,
  }) : super(key: key);

  final KtList<DataSource> dataSources;

  @override
  Widget build(BuildContext context) {
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
          return Card(
            child: ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.check_box_outline_blank_outlined,
                ),
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
              leading: IconButton(
                onPressed: () {
                  context.read<DataSourceStatusPickerBloc>().add(
                        DataSourceStatusPickerEvent.statusUpdated(
                          dataSources,
                          dataSourceStatuses,
                          dataSourceStatus.copyWith(
                            isEnabled: !dataSourceStatus.isEnabled,
                          ),
                        ),
                      );
                },
                icon: Icon(
                  dataSourceStatus.isEnabled
                      ? Icons.check_box
                      : Icons.check_box_outline_blank_outlined,
                ),
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
