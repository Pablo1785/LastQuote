import 'package:flutter/material.dart';

class QuotesLogo extends StatelessWidget {
  const QuotesLogo({Key? key, this.size = 150}) : super(key: key);

  final double size;
  @override
  Widget build(BuildContext context) {
    return Image(
      width: size,
      height: size,
      image: const AssetImage('assets/icon/quotes.png'),
    );
  }
}
