import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:resto/constant.dart';
import 'package:resto/widgets/custom_buuton_price.dart';
import 'package:resto/widgets/food_describtion.dart';
import 'package:resto/widgets/food_detail_image.dart';
import 'package:resto/widgets/food_details.dart';
import 'package:resto/widgets/food_name_and_rate.dart';
import 'package:resto/widgets/food_price.dart';

class BurgerDetails2 extends StatefulWidget {
  const BurgerDetails2({super.key});

  @override
  State<BurgerDetails2> createState() => _BurgerDetailsState();
}

class _BurgerDetailsState extends State<BurgerDetails2> {
  double price = 11.00;
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(CColors.kbackgroundcolor),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  size: 45,
                ),
              ),
              const SizedBox(height: 12),
              const FoodDetailsImage(imagePath: "assets/images/bigburger2.png"),
              const SizedBox(height: 27),
              const FoodNameAndRate(foodName: "Specail Beef", foodRate: "5.0"),
              const SizedBox(height: 41),
              const FoodDescribtion(
                  foodDetails:
                      "Beef Burger-Cheddar-Green Pepper-Olive-Tomato-Ketchup-Mayonnaise"),
              const SizedBox(height: 70),
              const FoodDetails(prepareTime: "20", calories: "65"),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(CColors.kcardcolor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomButtonPrice(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (counter > 1) {
                                counter--;
                                price = price - 11.00;
                              }
                            });
                          },
                        ),
                        Text(
                          "$counter",
                          style: const TextStyle(fontSize: 25),
                        ),
                        CustomButtonPrice(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              counter++;
                              price = price + 11.00;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  FoodPrice(price: "$price", textsize: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
