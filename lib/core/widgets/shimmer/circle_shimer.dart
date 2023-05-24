import 'package:flutter/material.dart';

class CircleShimmer extends StatelessWidget {
  const CircleShimmer({
    this.diameter,
    Key? key,
  }) : super(key: key);

  final double? diameter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter ?? 0,
      height: diameter ?? 0,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
