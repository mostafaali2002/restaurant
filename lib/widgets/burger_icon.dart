import 'package:flutter/material.dart';

class BurgerIcon extends StatelessWidget {
  const BurgerIcon({
    super.key,
    required this.iconPath,
  });
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        iconPath,
      ),
    );
  }
}
