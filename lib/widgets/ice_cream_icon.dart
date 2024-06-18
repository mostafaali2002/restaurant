import 'package:flutter/material.dart';

class IceCreamIcon extends StatelessWidget {
  const IceCreamIcon({
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
