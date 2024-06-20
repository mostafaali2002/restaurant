import 'package:flutter/material.dart';

class FoodDetailsImage extends StatelessWidget {
  const FoodDetailsImage({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        imagePath,
      ),
    );
  }
}
