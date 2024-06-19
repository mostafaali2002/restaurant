import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:resto/burger_details_view.dart';
import 'package:resto/constant.dart';

class FoodCardItem extends StatelessWidget {
  const FoodCardItem({
    super.key,
    required this.imagepath,
  });
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          Get.to(() => const BurgerDetails(), transition: Transition.fadeIn);
        },
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
                    Text(
                      r"$14.00",
                      style: TextStyle(fontSize: 20, fontFamily: "Moul"),
                    ),
                    LikeButton(),
                    /*
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    )
                    */
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
