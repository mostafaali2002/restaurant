import 'package:flutter/material.dart';
import 'package:resto/widgets/food_card_item.dart';

class FoodCarditemList extends StatelessWidget {
  const FoodCarditemList({
    super.key,
    required this.imagePath1,
    required this.imagePath2,
    this.ontap,
    this.ontap2,
    required this.foodName1,
    required this.foodName2,
    required this.smalltext1,
    required this.smalltext2,
    required this.price1,
    required this.price2,
  });
  final String imagePath1;
  final String imagePath2;
  final String foodName1;
  final String foodName2;
  final String smalltext1;
  final String smalltext2;
  final String price1;
  final String price2;
  final void Function()? ontap;
  final void Function()? ontap2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FoodCardItem(
          imagepath: imagePath1,
          ontap: ontap,
          foodName: foodName1,
          smalltext: smalltext1,
          price: price1,
        ),
        FoodCardItem(
          imagepath: imagePath2,
          ontap: ontap2,
          foodName: foodName2,
          smalltext: smalltext2,
          price: price2,
        ),
      ],
    );
  }
}
