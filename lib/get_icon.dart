import 'package:flutter/material.dart';

class GetIcon extends StatelessWidget {
  const GetIcon({
    super.key,
    required this.background,
    required this.icon,
  });
  final Color background;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: background),
      child: icon,
    );
  }
}
