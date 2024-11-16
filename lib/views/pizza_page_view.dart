import 'package:flutter/material.dart';
import 'package:resto/constant.dart';
import 'package:resto/views/burger_page_view.dart';
import 'package:resto/views/ice_cream_page_view.dart';
import 'package:resto/views/pop_corn_page_view.dart';
import 'package:resto/views/resto_details/pizza_details/pizza1_details_view.dart';
import 'package:resto/views/resto_details/pizza_details/pizza2_details_view.dart';
import 'package:resto/views/resto_details/pizza_details/pizza3_details_view.dart';
import 'package:resto/views/resto_details/pizza_details/pizza4_details_view.dart';
import 'package:resto/widgets/burger_icon.dart';
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BurgerPage(),
                          ));
                    },
                  ),
                  const Spacer(flex: 1),
                  GetIcon(
                    background: Colors.amber,
                    icon: const PizaaIcon(iconPath: ImagesPath.kblackpizza),
                    onTap: () {},
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
                imagePath1: "assets/images/pizaa.png",
                foodName1: "chicken ranch",
                smalltext1: "fresh Pizza",
                price1: "15.0",
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PizzaDetails1(),
                      ));
                },
                imagePath2: "assets/images/pizaa1.png",
                foodName2: "Vegetables",
                smalltext2: "fresh Pizza",
                price2: "13.0",
                ontap2: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PizzaDetails2(),
                      ));
                },
              ),
              const SizedBox(height: 22),
              FoodCarditemList(
                imagePath1: "assets/images/pizaa2.png",
                foodName1: "Margherita",
                smalltext1: "fresh Pizza",
                price1: "16.0",
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PizzaDetails3(),
                      ));
                },
                imagePath2: "assets/images/pizaa.png",
                foodName2: "Smoked",
                smalltext2: "fresh Pizza",
                price2: "14.0",
                ontap2: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PizzaDetails4(),
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
