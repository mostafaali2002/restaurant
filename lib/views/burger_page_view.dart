import 'package:flutter/material.dart';
import 'package:resto/constant.dart';
import 'package:resto/views/ice_cream_page_view.dart';
import 'package:resto/views/pizza_page_view.dart';
import 'package:resto/views/pop_corn_page_view.dart';
import 'package:resto/views/resto_details/burger_details/burger1_details_view.dart';
import 'package:resto/views/resto_details/burger_details/burger2_details_view.dart';
import 'package:resto/views/resto_details/burger_details/burger3_details_view.dart';
import 'package:resto/views/resto_details/burger_details/burger4_details_view.dart';
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
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: const Color(CColors.kbackgroundcolor),
                    icon: const PizaaIcon(iconPath: ImagesPath.kwhitepizza),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PizzaPage(),
                          ));
                    },
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: const Color(CColors.kbackgroundcolor),
                    icon: const PopCornIcon(iconPath: ImagesPath.kwhitepop),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopCornPage(),
                          ));
                    },
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: const Color(CColors.kbackgroundcolor),
                    icon:
                        const IceCreamIcon(iconPath: ImagesPath.kwhiteicecream),
                    onTap: () {
                      Navigator.pushReplacement(
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
              FoodCarditemList(
                imagePath1: "assets/images/beef.png",
                foodName1: "Double Beef",
                smalltext1: "fresh Burger",
                price1: "14.0",
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BurgerDetails1(),
                      ));
                },
                imagePath2: "assets/images/beef2.png",
                foodName2: "Thick Beef",
                smalltext2: "fresh Burger",
                price2: "11.0",
                ontap2: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BurgerDetails2(),
                      ));
                },
              ),
              const SizedBox(height: 22),
              FoodCarditemList(
                imagePath1: "assets/images/beef3.png",
                foodName1: "Specail Beef",
                smalltext1: "fresh Burger",
                price1: "15.0",
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BurgerDetails3(),
                      ));
                },
                imagePath2: "assets/images/beef4.png",
                foodName2: "chicken burger",
                smalltext2: "fresh Burger",
                price2: "10.0",
                ontap2: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BurgerDetails4(),
                      ));
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
