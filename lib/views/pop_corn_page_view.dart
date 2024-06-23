import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:resto/constant.dart';
import 'package:resto/views/burger_page_view.dart';
import 'package:resto/views/ice_cream_page_view.dart';
import 'package:resto/views/pizza_page_view.dart';
import 'package:resto/views/resto_details/pop_corn_details.dart';
import 'package:resto/widgets/burger_icon.dart';
import 'package:resto/widgets/food_card_item_list.dart';
import 'package:resto/widgets/get_icon.dart';
import 'package:resto/widgets/hello_text.dart';
import 'package:resto/widgets/ice_cream_icon.dart';
import 'package:resto/widgets/order_text.dart';
import 'package:resto/widgets/pizza_icon.dart';
import 'package:resto/widgets/pop_corn_icon.dart';
import 'package:resto/widgets/search_icon.dart';

class PopCornPage extends StatefulWidget {
  const PopCornPage({super.key});

  @override
  State<PopCornPage> createState() => _PopCornPageState();
}

class _PopCornPageState extends State<PopCornPage> {
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
                    background: const Color(CColors.kbackgroundcolor),
                    icon: const PizaaIcon(iconPath: ImagesPath.kwhitepizza),
                    onTap: () {
                      Get.to(() => const PizzaPage(),
                          transition: Transition.fadeIn);
                    },
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: Colors.amber,
                    icon: const PopCornIcon(iconPath: ImagesPath.kblackpop),
                    onTap: () {},
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
              FoodCarditemList(
                imagePath1: "assets/images/pop.png",
                foodName1: "Caramel",
                smalltext1: "fresh Corn",
                price1: "16.0",
                ontap: () {
                  Get.to(() => const PopCornDetails(),
                      transition: Transition.leftToRight);
                },
                imagePath2: "assets/images/pop.png",
                foodName2: "Butter",
                smalltext2: "fresh Corn",
                price2: "14.0",
                ontap2: () {
                  Get.to(() => const PopCornDetails(),
                      transition: Transition.leftToRight);
                },
              ),
              const SizedBox(height: 22),
              FoodCarditemList(
                imagePath1: "assets/images/pop.png",
                foodName1: "Crema",
                smalltext1: "fresh Corn",
                price1: "14.0",
                ontap: () {
                  Get.to(() => const PopCornDetails(),
                      transition: Transition.leftToRight);
                },
                imagePath2: "assets/images/pop.png",
                foodName2: "Chocolate",
                smalltext2: "fresh Corn",
                price2: "15.0",
                ontap2: () {
                  Get.to(() => const PopCornDetails(),
                      transition: Transition.leftToRight);
                },
              ),
            ]),
          ),
        ),
      ),
    );
    ;
  }
}
