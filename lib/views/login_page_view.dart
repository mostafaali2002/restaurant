import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resto/constant.dart';
import 'package:resto/views/burger_page_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(CColors.kbackgroundcolor),
        body: Form(
          key: formkey,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const Spacer(
              flex: 1,
            ),
            const Image(image: AssetImage("assets/images/logo.png")),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: Name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name is empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: "Enter Your First Name",
                    hintStyle: const TextStyle(fontSize: 15)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 160, 5, 46)),
              child: MaterialButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Get.to(() => BurgerPage(), transition: Transition.native);
                  }
                },
                child: const Text("Login",
                    style: TextStyle(
                        fontSize: 20, fontFamily: CColors.kfontfamilymontaga)),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ]),
        ),
      ),
    );
  }
}
