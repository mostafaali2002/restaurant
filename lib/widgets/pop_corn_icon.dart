import 'package:flutter/material.dart';

class PopCornIcon extends StatelessWidget {
  const PopCornIcon({
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
