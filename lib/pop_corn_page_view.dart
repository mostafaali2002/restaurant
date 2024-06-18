import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:resto/burger_page_view.dart';
import 'package:resto/constant.dart';
import 'package:resto/ice_cream_page_view.dart';
import 'package:resto/pizza_page_view.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SearchIcon(),
              ],
            ),
            const SizedBox(height: 25),
            const HelloText(),
            const OrderText(),
            const SizedBox(height: 30),
            Row(
              children: [
                GetIcon(
                  background: const Color(CColors.kbackgroundcolor),
                  icon: BurgerIcon(iconPath: ImagesPath.kwhiteburger),
                  onTap: () {
                    Get.to(() => const BurgerPage(),
                        transition: Transition.fadeIn);
                  },
                ),
                const Spacer(flex: 1),
                GetIcon(
                  background: const Color(CColors.kbackgroundcolor),
                  icon: PizaaIcon(iconPath: ImagesPath.kwhitepizza),
                  onTap: () {
                    Get.to(() => const PizzaPage(),
                        transition: Transition.fadeIn);
                  },
                ),
                const Spacer(flex: 1),
                GetIcon(
                  background: Colors.amber,
                  icon: PopCornIcon(iconPath: ImagesPath.kblackpop),
                  onTap: () {},
                ),
                const Spacer(flex: 1),
                GetIcon(
                  background: const Color(CColors.kbackgroundcolor),
                  icon: const IceCreamIcon(iconPath: ImagesPath.kwhiteicecream),
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
                imagePath1: "assets/images/pop.png",
                imagePath2: "assets/images/pop.png"),
            const SizedBox(height: 22),
            const FoodCarditemList(
                imagePath1: "assets/images/pop.png",
                imagePath2: "assets/images/pop.png"),
          ]),
        ),
      ),
    );
    ;
  }
}
