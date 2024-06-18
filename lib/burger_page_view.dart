import 'package:flutter/material.dart';
import 'package:resto/constant.dart';
import 'package:resto/ice_cream_page_view.dart';
import 'package:resto/pop_corn_page_view.dart';
import 'package:resto/widgets/food_card_item_list.dart';
import 'package:resto/widgets/ice_cream_icon.dart';

import 'package:resto/widgets/order_text.dart';

import 'package:resto/pizza_page_view.dart';

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
                  background: Colors.amber,
                  icon: BurgerIcon(iconPath: ImagesPath.kblackburger),
                  onTap: () {},
                ),
                const Spacer(flex: 1),
                GetIcon(
                  background: const Color(CColors.kbackgroundcolor),
                  icon: PizaaIcon(iconPath: ImagesPath.kwhitepizza),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PizzaPage(),
                        ));
                  },
                ),
                const Spacer(flex: 1),
                GetIcon(
                  background: const Color(CColors.kbackgroundcolor),
                  icon: PopCornIcon(iconPath: ImagesPath.kwhitepop),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PopCornPage(),
                        ));
                  },
                ),
                const Spacer(flex: 1),
                GetIcon(
                  background: const Color(CColors.kbackgroundcolor),
                  icon: const IceCreamIcon(iconPath: ImagesPath.kwhiteicecream),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const IceCreamPage(),
                        ));
                  },
                ),
                const Spacer(flex: 3),
              ],
            ),
            const SizedBox(height: 40),
            const FoodCarditemList(
                imagePath1: "assets/images/beef.png",
                imagePath2: "assets/images/beef2.png"),
            const SizedBox(height: 22),
            const FoodCarditemList(
                imagePath1: "assets/images/beef3.png",
                imagePath2: "assets/images/beef4.png"),
          ]),
        ),
      ),
    );
  }
}
