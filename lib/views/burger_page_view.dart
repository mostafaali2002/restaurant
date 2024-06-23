import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resto/constant.dart';

import 'package:resto/views/ice_cream_page_view.dart';
import 'package:resto/views/pizza_page_view.dart';
import 'package:resto/views/pop_corn_page_view.dart';
import 'package:resto/views/resto_details/burger_details_view.dart';
import 'package:resto/widgets/food_card_item_list.dart';
import 'package:resto/widgets/ice_cream_icon.dart';
import 'package:resto/widgets/order_text.dart';
import 'package:resto/widgets/burger_icon.dart';
import 'package:resto/widgets/get_icon.dart';
import 'package:resto/widgets/hello_text.dart';
import 'package:resto/widgets/pizza_icon.dart';
import 'package:resto/widgets/pop_corn_icon.dart';
import 'package:resto/widgets/search_icon.dart';

class BurgerPage extends StatefulWidget {
  const BurgerPage({super.key});

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
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
                    background: Colors.amber,
                    icon: const BurgerIcon(iconPath: ImagesPath.kblackburger),
                    onTap: () {},
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: const Color(CColors.kbackgroundcolor),
                    icon: const PizaaIcon(iconPath: ImagesPath.kwhitepizza),
                    onTap: () {
                      Get.to(() => const PizzaPage(),
                          transition: Transition.fadeIn);
                    },
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
                  imagePath1: "assets/images/beef.png",
                  foodName1: "Double Beef",
                  smalltext1: "fresh Burger",
                  price1: "14.0",
                  imagePath2: "assets/images/beef2.png",
                  foodName2: "Thick Beef",
                  smalltext2: "fresh Burger",
                  price2: "11.0"),
              const SizedBox(height: 22),
              FoodCarditemList(
                imagePath1: "assets/images/beef3.png",
                foodName1: "Specail Beef",
                smalltext1: "fresh Burger",
                price1: "15.0",
                ontap: () {
                  Get.to(() => const BurgerDetails(),
                      transition: Transition.leftToRight);
                },
                imagePath2: "assets/images/beef4.png",
                foodName2: "chicken burger",
                smalltext2: "fresh Burger",
                price2: "10.0",
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
