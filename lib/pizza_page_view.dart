import 'package:flutter/material.dart';
import 'package:resto/burger_page_view.dart';
import 'package:resto/constant.dart';
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BurgerPage(),
                        ));
                  },
                ),
                const Spacer(flex: 1),
                GetIcon(
                  background: Colors.amber,
                  icon: PizaaIcon(iconPath: ImagesPath.kblackpizza),
                  onTap: () {},
                ),
                const Spacer(flex: 1),
                GetIcon(
                  background: const Color(CColors.kbackgroundcolor),
                  icon: PopCornIcon(iconPath: ImagesPath.kwhitepop),
                  onTap: () {},
                ),
                const Spacer(flex: 1),
                GetIcon(
                  background: const Color(CColors.kbackgroundcolor),
                  icon: const IceCreamIcon(iconPath: ImagesPath.kwhiteicecream),
                  onTap: () {},
                ),
                const Spacer(flex: 3),
              ],
            ),
            const SizedBox(height: 40),
            const FoodCarditemList(
                imagePath1: "assets/images/pizaa.png",
                imagePath2: "assets/images/pizaa1.png"),
            const SizedBox(height: 22),
            const FoodCarditemList(
                imagePath1: "assets/images/pizaa2.png",
                imagePath2: "assets/images/pizaa.png"),
          ]),
        ),
      ),
    );
  }
}
