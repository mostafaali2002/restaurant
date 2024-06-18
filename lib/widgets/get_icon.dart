import 'package:flutter/material.dart';

class GetIcon extends StatelessWidget {
  const GetIcon({
    super.key,
    required this.background,
    required this.icon,
    required this.onTap,
  });
  final Color background;
  final Widget icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: background),
        child: icon,
      ),
    );
  }
}
