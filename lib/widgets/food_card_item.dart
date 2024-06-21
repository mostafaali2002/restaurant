import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:resto/constant.dart';
import 'package:resto/views/burger_details_view.dart';
import 'package:resto/widgets/food_price.dart';

class FoodCardItem extends StatelessWidget {
  const FoodCardItem({
    super.key,
    required this.imagepath,
    this.ontap,
  });
  final String imagepath;
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
                const Text(
                  "Beef Burger",
                  style: TextStyle(fontSize: 20, fontFamily: "Moul"),
                ),
                const Text(
                  "Fresh Beef",
                  style: TextStyle(fontSize: 18, fontFamily: "Montaga"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodPrice(price: "14.00", textsize: 20),
                    LikeButton(
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
