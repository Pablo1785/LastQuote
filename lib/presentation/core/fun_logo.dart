import 'package:flutter/material.dart';

class FunLogo extends StatelessWidget {
  const FunLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 200,
          child: Align(
            alignment: Alignment.topCenter,
            child: Icon(
              Icons.architecture_outlined,
              size: 150,
              color: Colors.indigo[400]!,
            ),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.g_mobiledata,
              size: 75,
              color: Colors.indigo[400]!,
            ),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 150,
              color: Colors.indigo[400]!,
            ),
          ),
        ),
      ],
    );
  }
}
