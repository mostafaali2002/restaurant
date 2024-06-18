import 'package:flutter/material.dart';
import 'package:resto/burger_icon.dart';
import 'package:resto/constant.dart';
import 'package:resto/food_card_item.dart';
import 'package:resto/get_icon.dart';
import 'package:resto/hello_text.dart';
import 'package:resto/ice_cream_icon.dart';
import 'package:resto/order_text.dart';
import 'package:resto/pizza_icon.dart';
import 'package:resto/pop_corn_icon.dart';
import 'package:resto/search_icon.dart';

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
            const SizedBox(
              height: 25,
            ),
            const HelloText(),
            const OrderText(),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                GetIcon(
                    background: Colors.amber,
                    icon: BurgerIcon(iconColor: Colors.black)),
                const Spacer(
                  flex: 1,
                ),
                GetIcon(
                    background: const Color(CColors.kbackgroundcolor),
                    icon: PizaaIcon()),
                const Spacer(
                  flex: 1,
                ),
                PopCornIcon(),
                const Spacer(
                  flex: 1,
                ),
                IceCreamIcon(),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FoodCardItem(Imagepath: "assets/images/beef.png"),
                FoodCardItem(Imagepath: "assets/images/beef2.png"),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FoodCardItem(Imagepath: "assets/images/beef3.png"),
                FoodCardItem(Imagepath: "assets/images/beef4.png"),
              ],
            )
          ]),
        ),
      ),
    );
    ;
  }
}
