import 'package:flutter/material.dart';

class BurgerIcon extends StatelessWidget {
  BurgerIcon({
    super.key,
    this.iconColor = Colors.white,
  });
  Color iconColor;
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(
        "assets/images/burger.png",
      ),
    );
  }
}
