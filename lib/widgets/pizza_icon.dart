import 'package:flutter/material.dart';

class PizaaIcon extends StatelessWidget {
  const PizaaIcon({
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
