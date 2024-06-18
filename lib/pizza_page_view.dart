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

class PizzaPage extends StatefulWidget {
  const PizzaPage({super.key});

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(CColors.kbackgroundcolor),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  background: const Color(CColors.kbackgroundcolor),
                  icon: BurgerIcon()),
              const Spacer(
                flex: 1,
              ),
              GetIcon(background: Colors.amber, icon: PizaaIcon()),
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
              FoodCardItem(Imagepath: "assets/images/pizaa.png"),
              FoodCardItem(Imagepath: "assets/images/pizaa1.png"),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FoodCardItem(Imagepath: "assets/images/pizaa2.png"),
              FoodCardItem(Imagepath: "assets/images/pizaa.png"),
            ],
          )
        ]),
      ),
    );
  }
}
