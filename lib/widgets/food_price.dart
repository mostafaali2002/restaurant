import 'package:flutter/material.dart';

class FoodPrice extends StatelessWidget {
  const FoodPrice({
    super.key,
    required this.price,
    required this.textsize,
  });
  final String price;
  final double textsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      "\$$price",
      style: TextStyle(fontSize: textsize, fontFamily: "Moul"),
    );
  }
}
