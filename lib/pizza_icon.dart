import 'package:flutter/material.dart';

class PizaaIcon extends StatelessWidget {
  PizaaIcon({
    super.key,
    this.iconColor = Colors.white,
  });
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(
        "assets/images/Vector-1.png",
      ),
    );
  }
}
