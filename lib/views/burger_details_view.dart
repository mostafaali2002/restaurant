import 'package:flutter/material.dart';
import 'package:resto/constant.dart';

class BurgerDetails extends StatefulWidget {
  const BurgerDetails({super.key});

  @override
  State<BurgerDetails> createState() => _BurgerDetailsState();
}

class _BurgerDetailsState extends State<BurgerDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(CColors.kbackgroundcolor),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  size: 45,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: Image.asset(
                  "assets/images/bigBurger.png",
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              const Row(
                children: [
                  Text(
                    "Beef Burger",
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily: CColors.kfontfamilymoul,
                        color: Color(CColors.kbagcolor)),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 32,
                  ),
                  Text(
                    "5.0",
                    style: TextStyle(
                        fontFamily: CColors.kfontfamilymoul, fontSize: 17),
                  )
                ],
              ),
              const SizedBox(
                height: 41,
              ),
              const Text(
                maxLines: 2,
                "Beef Burger with spices adn cucmbers our chef special healthy and fat free dish.",
                style: TextStyle(
                  fontFamily: CColors.kfontfamilymontaga,
                  fontSize: 19,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Delivery Time",
                        style: TextStyle(
                            fontFamily: CColors.kfontfamilymontaga,
                            fontSize: 19,
                            color: Color(CColors.kbagcolor)),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "⏰ 20 mins",
                        style: TextStyle(
                            fontFamily: CColors.kfontfamilymontaga,
                            fontSize: 19),
                      )
                    ],
                  ),
                  Text(
                    "🔥 65 Calories",
                    style: TextStyle(
                        fontFamily: CColors.kfontfamilymontaga,
                        fontSize: 19,
                        color: Color(CColors.kbagcolor)),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(CColors.kcardcolor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.black),
                            shape:
                                MaterialStateProperty.all(const CircleBorder()),
                          ),
                          onPressed: () {},
                          child: const Icon(Icons.remove),
                        ),
                        const Text(
                          "1",
                          style: TextStyle(fontSize: 25),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.black),
                            shape:
                                MaterialStateProperty.all(const CircleBorder()),
                          ),
                          onPressed: () {},
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    r"$14.00",
                    style: TextStyle(fontSize: 30, fontFamily: "Moul"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
