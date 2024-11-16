import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:resto/constant.dart';
import 'package:resto/widgets/food_price.dart';

class FoodCardItem extends StatelessWidget {
  const FoodCardItem({
    super.key,
    required this.imagepath,
    this.ontap,
    required this.foodName,
    required this.smalltext,
    required this.price,
  });
  final String imagepath;
  final String foodName;
  final String smalltext;
  final String price;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: ontap,
        child: Container(
          height: 240,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(CColors.kcardcolor)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagepath,
                  width: 125,
                  height: 120,
                ),
                Text(
                  foodName,
                  maxLines: 1,
                  style: const TextStyle(fontSize: 15, fontFamily: "Moul"),
                ),
                Text(
                  smalltext,
                  style: const TextStyle(fontSize: 18, fontFamily: "Montaga"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodPrice(price: price, textsize: 20),
                    const LikeButton(
                      circleSize: 20,
                      likeCount: 100,
                      countPostion: CountPostion.bottom,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
