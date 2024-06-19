import 'package:flutter/material.dart';
import 'package:resto/widgets/food_card_item.dart';

class FoodCarditemList extends StatelessWidget {
  const FoodCarditemList({
    super.key,
    required this.imagePath1,
    required this.imagePath2,
  });
  final String imagePath1;
  final String imagePath2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FoodCardItem(imagepath: imagePath1),
        FoodCardItem(imagepath: imagePath2),
      ],
    );
  }
}
