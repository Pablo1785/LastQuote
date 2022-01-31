import 'package:charts_flutter/flutter.dart' as charts;
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/user_term_data_source_engagement/user_term_data_source_engagement.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

class UserTermDataSourceEngagementPieChart extends StatelessWidget {
  const UserTermDataSourceEngagementPieChart({
    Key? key,
    this.engagementType = 'like',
    required this.termId,
    required this.userId,
    required this.userTermDataSourceEngagements,
  }) : super(key: key);

  factory UserTermDataSourceEngagementPieChart.featurePreview({
    Key? key,
    String engagementType = 'like',
    required String termId,
    required UniqueId userId,
    required KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements,
  }) {
    final fakeData = [
      UserTermDataSourceEngagement(
        dataSourceId: UniqueId.fromUniqueString('Facebook'),
        termId: termId,
        userId: userId,
        id: JunctionUniqueId.fromUniqueString(
          'Facebook_' + termId + '_' + userId.getOrCrash(),
        ),
        isInitialInterest: true,
        likeCount: 15,
        openCount: 25,
        shareCount: 7,
        dismissCount: 3,
      ),
      UserTermDataSourceEngagement(
        dataSourceId: UniqueId.fromUniqueString('Twitter'),
        termId: termId,
        userId: userId,
        id: JunctionUniqueId.fromUniqueString(
          'Twitter_' + termId + '_' + userId.getOrCrash(),
        ),
        isInitialInterest: false,
        likeCount: 10,
        openCount: 40,
        shareCount: 10,
        dismissCount: 5,
      ),
      UserTermDataSourceEngagement(
        dataSourceId: UniqueId.fromUniqueString('Reddit'),
        termId: termId,
        userId: userId,
        id: JunctionUniqueId.fromUniqueString(
          'Reddit_' + termId + '_' + userId.getOrCrash(),
        ),
        isInitialInterest: false,
        likeCount: 5,
        openCount: 15,
        shareCount: 2,
        dismissCount: 1,
      ),
    ];
    fakeData.addAll(
      userTermDataSourceEngagements.iter.map(
        (engagement) => engagement.copyWith(
          dataSourceId: UniqueId.fromUniqueString(
            engagement.dataSourceId.getOrCrash() == 'CLIENT_APP'
                ? 'Last Quote'
                : engagement.dataSourceId.getOrCrash(),
          ),
        ),
      ),
    );
    return UserTermDataSourceEngagementPieChart(
      engagementType: engagementType,
      termId: termId,
      userId: userId,
      userTermDataSourceEngagements: fakeData.toImmutableList(),
    );
  }

  final String engagementType;
  final String termId;
  final UniqueId userId;
  final KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements;

  @override
  Widget build(BuildContext context) {
    return charts.PieChart(
      [
        charts.Series<UserTermDataSourceEngagement, String>(
          id: engagementType,
          displayName: engagementType,
          colorFn: (_, index) => charts.ColorUtil.fromDartColor(
              Colors.indigo[100 * ((index ?? 3) + 2)]!),
          domainFn: (userTermDatasourceEngagement, _) =>
              userTermDatasourceEngagement.dataSourceId.getOrCrash(),
          measureFn: (userTermDataSourceEngagement, _) {
            switch (engagementType) {
              case 'like':
                return userTermDataSourceEngagement.likeCount;
              case 'share':
                return userTermDataSourceEngagement.shareCount;
              case 'open':
                return userTermDataSourceEngagement.openCount;
              case 'dismiss':
                return userTermDataSourceEngagement.dismissCount;
              default:
                return userTermDataSourceEngagement.likeCount;
            }
          },
          labelAccessorFn: (userTermDataSourceEngagement, _) =>
              userTermDataSourceEngagement.dataSourceId.getOrCrash() ==
                      'CLIENT_APP'
                  ? 'Last Quote'
                  : userTermDataSourceEngagement.dataSourceId.getOrCrash(),
          data: userTermDataSourceEngagements.asList(),
        )
      ],
      behaviors: [
        charts.DatumLegend<Object>(
          position: charts.BehaviorPosition.start,
          showMeasures: true,
        ),
      ],
      defaultRenderer: charts.ArcRendererConfig(
        arcRatio: 0.6,
        arcRendererDecorators: [
          charts.ArcLabelDecorator<Object>(
            labelPosition: charts.ArcLabelPosition.auto,
          ),
        ],
      ),
    );
  }
}
