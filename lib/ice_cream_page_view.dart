import 'package:flutter/material.dart';
import 'package:resto/burger_page_view.dart';
import 'package:resto/constant.dart';
import 'package:resto/pizza_page_view.dart';
import 'package:resto/pop_corn_page_view.dart';
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
                  background: Colors.amber,
                  icon: const IceCreamIcon(iconPath: ImagesPath.kblackicecream),
                  onTap: () {},
                ),
                const Spacer(flex: 3),
              ],
            ),
            const SizedBox(height: 40),
            const FoodCarditemList(
                imagePath1: "assets/images/ice.png",
                imagePath2: "assets/images/ice2.png"),
            const SizedBox(height: 22),
            const FoodCarditemList(
                imagePath1: "assets/images/ice3.png",
                imagePath2: "assets/images/ice4.png"),
          ]),
        ),
      ),
    );
  }
}
