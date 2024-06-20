import 'package:flutter/material.dart';
import 'package:resto/constant.dart';

class FoodDescribtion extends StatelessWidget {
  const FoodDescribtion({
    super.key,
    required this.foodDetails,
  });
  final String foodDetails;
  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      foodDetails,
      style: const TextStyle(
        fontFamily: CColors.kfontfamilymontaga,
        fontSize: 19,
      ),
    );
  }
}
