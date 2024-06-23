import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:resto/constant.dart';
import 'package:resto/views/burger_page_view.dart';
import 'package:resto/views/ice_cream_page_view.dart';

import 'package:resto/views/pop_corn_page_view.dart';
import 'package:resto/views/resto_details/pizza_details_view.dart';
import 'package:resto/widgets/burger_icon.dart';
import 'package:resto/widgets/food_card_item.dart';
import 'package:resto/widgets/food_card_item_list.dart';
import 'package:resto/widgets/get_icon.dart';
import 'package:resto/widgets/hello_text.dart';
import 'package:resto/widgets/ice_cream_icon.dart';
import 'package:resto/widgets/order_text.dart';
import 'package:resto/widgets/pizza_icon.dart';
import 'package:resto/widgets/pop_corn_icon.dart';
import 'package:resto/widgets/search_icon.dart';

class PizzaPage extends StatefulWidget {
  const PizzaPage({super.key});

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(CColors.kbackgroundcolor),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SearchIcon(),
                ],
              ),
              const SizedBox(height: 2),
              const HelloText(),
              const OrderText(),
              const SizedBox(height: 30),
              Row(
                children: [
                  GetIcon(
                    background: const Color(CColors.kbackgroundcolor),
                    icon: const BurgerIcon(iconPath: ImagesPath.kwhiteburger),
                    onTap: () {
                      Get.to(() => const BurgerPage(),
                          transition: Transition.fadeIn);
                    },
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: Colors.amber,
                    icon: const PizaaIcon(iconPath: ImagesPath.kblackpizza),
                    onTap: () {},
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: const Color(CColors.kbackgroundcolor),
                    icon: const PopCornIcon(iconPath: ImagesPath.kwhitepop),
                    onTap: () {
                      Get.to(() => const PopCornPage(),
                          transition: Transition.fadeIn);
                    },
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: const Color(CColors.kbackgroundcolor),
                    icon:
                        const IceCreamIcon(iconPath: ImagesPath.kwhiteicecream),
                    onTap: () {
                      Get.to(() => const IceCreamPage(),
                          transition: Transition.fadeIn);
                    },
                  ),
                  const Spacer(flex: 3),
                ],
              ),
              const SizedBox(height: 40),
              const FoodCarditemList(
                imagePath1: "assets/images/pizaa.png",
                foodName1: "chicken ranch",
                smalltext1: "fresh Pizza",
                price1: "15.0",
                imagePath2: "assets/images/pizaa1.png",
                foodName2: "Vegetables",
                smalltext2: "fresh Pizza",
                price2: "13.0",
              ),
              const SizedBox(height: 22),
              FoodCarditemList(
                imagePath1: "assets/images/pizaa2.png",
                foodName1: "Margherita",
                smalltext1: "fresh Pizza",
                price1: "16.0",
                ontap: () {
                  Get.to(() => const PizzaDetails(),
                      transition: Transition.leftToRight);
                },
                imagePath2: "assets/images/pizaa.png",
                foodName2: "Smoked",
                smalltext2: "fresh Pizza",
                price2: "14.0",
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
