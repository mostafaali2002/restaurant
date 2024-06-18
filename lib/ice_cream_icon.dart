import 'package:flutter/material.dart';

class IceCreamIcon extends StatelessWidget {
  IceCreamIcon({
    super.key,
    this.iconColor = Colors.white,
  });
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.local_pizza,
          size: 30,
          color: iconColor,
        ));
  }
}
