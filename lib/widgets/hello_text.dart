import 'package:flutter/material.dart';
import 'package:resto/constant.dart';

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello ${Name.value.text}",
      style: TextStyle(fontSize: 30, fontFamily: CColors.kfontfamilymoul),
    );
  }
}
