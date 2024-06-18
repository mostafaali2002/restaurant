import 'package:flutter/material.dart';
import 'package:resto/constant.dart';

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello Mostafa",
      style: TextStyle(fontSize: 30, fontFamily: CColors.kfontfamilymoul),
    );
  }
}
