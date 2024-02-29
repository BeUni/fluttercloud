import 'package:flutter/material.dart';

class SpaceView extends StatelessWidget {

  final double height;
  final double width;

  const SpaceView({super.key, this.height=12, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
