import 'package:flutter/material.dart';
import 'package:resto/constant.dart';

class FoodCardItem extends StatelessWidget {
  const FoodCardItem({
    super.key,
    required this.Imagepath,
  });
  final String Imagepath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(CColors.kcardcolor)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Imagepath,
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  r"$14.00",
                  style: TextStyle(fontSize: 20, fontFamily: "Moul"),
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
