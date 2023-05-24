import 'package:flutter/material.dart';

class LinearGradientBackground extends StatelessWidget {
  final Widget child;
  const LinearGradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 24, 34, 32),
            Color.fromARGB(255, 48, 44, 43),
            Color.fromARGB(255, 227, 165, 57),
            Color.fromARGB(255, 161, 85, 69),
            Color.fromARGB(255, 30, 22, 33),
            Color.fromARGB(255, 12, 44, 53),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
