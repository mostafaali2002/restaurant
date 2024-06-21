import 'package:flutter/material.dart';

class CustomButtonPrice extends StatelessWidget {
  const CustomButtonPrice({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.black),
        shape: MaterialStateProperty.all(const CircleBorder()),
      ),
      onPressed: onPressed,
      child: icon,
    );
  }
}
