import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:resto/views/search_page_view.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: IconButton(
          onPressed: () {
            Get.to(() => const SearchPage(), transition: Transition.fadeIn);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 25,
          )),
    );
  }
}
