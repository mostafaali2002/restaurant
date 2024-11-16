import 'package:flutter/material.dart';
import 'package:resto/constant.dart';
import 'package:resto/views/resto_details/burger_details/burger1_details_view.dart';
import 'package:resto/views/resto_details/pizza_details/pizza1_details_view.dart';
import 'package:resto/widgets/food_card_item_list.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(CColors.kbackgroundcolor),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 22,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Search",
                      hintStyle: const TextStyle(fontSize: 20)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Best Seller",
                  style: TextStyle(
                      fontFamily: CColors.kfontfamilymoul, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: FoodCarditemList(
                    imagePath1: "assets/images/beef.png",
                    ontap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BurgerDetails1(),
                          ));
                    },
                    imagePath2: "assets/images/pizaa.png",
                    ontap2: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PizzaDetails1(),
                          ));
                    },
                    foodName1: "Double Beef",
                    foodName2: "chicken ranch",
                    smalltext1: "fresh Burger",
                    smalltext2: "fresh Pizza",
                    price1: "14.0",
                    price2: "15.0"),
              ),
              const SizedBox(
                height: 22,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: FoodCarditemList(
                    imagePath1: "assets/images/beef.png",
                    imagePath2: "assets/images/pizaa.png",
                    foodName1: "Double Beef",
                    foodName2: "chicken ranch",
                    smalltext1: "fresh Burger",
                    smalltext2: "fresh Pizza",
                    price1: "14.0",
                    price2: "15.0"),
              ),
              const SizedBox(
                height: 22,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: FoodCarditemList(
                    imagePath1: "assets/images/beef.png",
                    imagePath2: "assets/images/pizaa.png",
                    foodName1: "Double Beef",
                    foodName2: "chicken ranch",
                    smalltext1: "fresh Burger",
                    smalltext2: "fresh Pizza",
                    price1: "14.0",
                    price2: "15.0"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
