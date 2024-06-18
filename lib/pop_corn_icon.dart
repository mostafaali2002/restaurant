import 'package:flutter/material.dart';

class PopCornIcon extends StatelessWidget {
  PopCornIcon({
    super.key,
    this.iconColor = Colors.white,
  });
  Color iconColor;
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(
        "assets/images/pop corn.png",
      ),
    );
  }
}
