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
    return const Scaffold(
      backgroundColor: Color(CColors.kbackgroundcolor),
    );
  }
}
