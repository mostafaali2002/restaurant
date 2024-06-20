import 'package:flutter/material.dart';
import 'package:resto/constant.dart';

class FoodNameAndRate extends StatelessWidget {
  const FoodNameAndRate({
    super.key,
    required this.foodName,
    required this.foodRate,
  });
  final String foodName;
  final String foodRate;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          foodName,
          style: const TextStyle(
              fontSize: 27,
              fontFamily: CColors.kfontfamilymoul,
              color: Color(CColors.kbagcolor)),
        ),
        const Spacer(
          flex: 1,
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 32,
        ),
        Text(
          foodRate,
          style: const TextStyle(
              fontFamily: CColors.kfontfamilymoul, fontSize: 17),
        )
      ],
    );
  }
}
