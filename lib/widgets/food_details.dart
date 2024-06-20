import 'package:flutter/material.dart';
import 'package:resto/constant.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({
    super.key,
    required this.prepareTime,
    required this.calories,
  });
  final String prepareTime;
  final String calories;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const Text(
              "Delivery Time",
              style: TextStyle(
                  fontFamily: CColors.kfontfamilymontaga,
                  fontSize: 19,
                  color: Color(CColors.kbagcolor)),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "⏰ $prepareTime mins",
              style: const TextStyle(
                  fontFamily: CColors.kfontfamilymontaga, fontSize: 19),
            )
          ],
        ),
        Text(
          "🔥 $calories Calories",
          style: const TextStyle(
              fontFamily: CColors.kfontfamilymontaga,
              fontSize: 19,
              color: Color(CColors.kbagcolor)),
        )
      ],
    );
  }
}
