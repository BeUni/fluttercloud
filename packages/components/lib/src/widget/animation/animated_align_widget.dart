import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({super.key});

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 250,
        width: 250,
        color: Colors.orangeAccent,
        child: AnimatedAlign(
            curve: Curves.ease,
            alignment: isSelected ? Alignment.topRight : Alignment(0, 0),
            duration: const Duration(milliseconds: 700),
            child: const Icon(
              Icons.star,
              size: 36,
              color: Colors.redAccent,
            )),
      ),
    );
  }
}
