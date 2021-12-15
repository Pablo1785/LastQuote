import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmeringListWidget extends StatelessWidget {
  const ShimmeringListWidget({
    Key? key,
    this.baseColor,
    this.highlightColor,
    this.itemCount,
  }) : super(key: key);

  final Color? baseColor;
  final Color? highlightColor;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: baseColor ?? Colors.indigo[400]!,
        highlightColor: highlightColor ?? Colors.blue[200]!,
        enabled: true,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: itemCount ?? 7,
          itemBuilder: (BuildContext context, int index) {
            return const Card(
              child: SizedBox(
                width: 50,
                height: 30,
              ),
            );
          },
        ),
      ),
    );
  }
}
