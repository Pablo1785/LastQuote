import 'package:flutter/material.dart';

class FunLogo extends StatelessWidget {
  const FunLogo({Key? key, this.size = 200}) : super(key: key);

  final double size;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size,
          height: size,
          child: Align(
            alignment: Alignment.topCenter,
            child: Icon(
              Icons.architecture_outlined,
              size: 0.75 * size,
              color: Colors.indigo[400]!,
            ),
          ),
        ),
        Container(
          width: size,
          height: size,
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.g_mobiledata,
              size: 0.5 * 0.75 * size,
              color: Colors.indigo[400]!,
            ),
          ),
        ),
        Container(
          width: size,
          height: size,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 0.75 * size,
              color: Colors.indigo[400]!,
            ),
          ),
        ),
      ],
    );
  }
}
