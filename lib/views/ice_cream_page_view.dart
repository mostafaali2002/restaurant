import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:resto/constant.dart';
import 'package:resto/views/burger_page_view.dart';
import 'package:resto/views/pizza_page_view.dart';
import 'package:resto/views/pop_corn_page_view.dart';
import 'package:resto/views/resto_details/ice_cream_details/ice_cream1_details_view.dart';
import 'package:resto/views/resto_details/ice_cream_details/ice_cream2_details_view.dart';
import 'package:resto/views/resto_details/ice_cream_details/ice_cream3_details_view.dart';
import 'package:resto/views/resto_details/ice_cream_details/ice_cream4_details_view.dart';
import 'package:resto/widgets/burger_icon.dart';
import 'package:resto/widgets/food_card_item_list.dart';
import 'package:resto/widgets/get_icon.dart';
import 'package:resto/widgets/hello_text.dart';
import 'package:resto/widgets/ice_cream_icon.dart';
import 'package:resto/widgets/order_text.dart';
import 'package:resto/widgets/pizza_icon.dart';
import 'package:resto/widgets/pop_corn_icon.dart';
import 'package:resto/widgets/search_icon.dart';

class IceCreamPage extends StatefulWidget {
  const IceCreamPage({super.key});

  @override
  State<IceCreamPage> createState() => _IceCreamPageState();
}

class _IceCreamPageState extends State<IceCreamPage> {
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
                    background: const Color(CColors.kbackgroundcolor),
                    icon: const PopCornIcon(iconPath: ImagesPath.kwhitepop),
                    onTap: () {
                      Get.to(() => const PopCornPage(),
                          transition: Transition.fadeIn);
                    },
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: Colors.amber,
                    icon:
                        const IceCreamIcon(iconPath: ImagesPath.kblackicecream),
                    onTap: () {},
                  ),
                  const Spacer(flex: 3),
                ],
              ),
              const SizedBox(height: 40),
              FoodCarditemList(
                imagePath1: "assets/images/ice.png",
                foodName1: "Oreo Cookies",
                smalltext1: "fresh Ice",
                price1: "5.0",
                ontap: () {
                  Get.to(() => const IceCreamDetails1(),
                      transition: Transition.leftToRight);
                },
                imagePath2: "assets/images/ice2.png",
                foodName2: "Straweberry",
                smalltext2: "fresh Ice",
                price2: "10.0",
                ontap2: () {
                  Get.to(() => const IceCreamDetails2(),
                      transition: Transition.leftToRight);
                },
              ),
              const SizedBox(height: 22),
              FoodCarditemList(
                imagePath1: "assets/images/ice3.png",
                foodName1: "Vanilla",
                smalltext1: "fresh Ice",
                price1: "5.0",
                ontap: () {
                  Get.to(() => const IceCreamDetails3(),
                      transition: Transition.leftToRight);
                },
                imagePath2: "assets/images/ice4.png",
                foodName2: "Milk",
                smalltext2: "fresh Ice",
                price2: "9.0",
                ontap2: () {
                  Get.to(() => const IceCreamDetails4(),
                      transition: Transition.leftToRight);
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
