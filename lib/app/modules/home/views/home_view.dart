import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Image.asset("assets/1.png"),
                      Align(
                          alignment: Alignment.topRight,
                          child: Image.asset("assets/2.png")),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Text(
                                "Login account",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.person_outline,
                              ),
                            ],
                          ),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("wellcome back azhar")),
                        SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Mini",
                              style: TextStyle(fontSize: 50),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Shop",
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Enter email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Enter password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: Text("forget Password?")),
                        ElevatedButton(
                            onPressed: () => Get.toNamed(Routes.UTAMA),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.amber),
                                fixedSize: MaterialStatePropertyAll(
                                  Size.fromWidth(400),
                                )),
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("or sign up with"),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                                child: Image.asset("assets/google1.png")),
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                                child: Image.asset("assets/fb.png")),
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                                child: Image.asset("assets/app.png")),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Not register yet?"),
                            TextButton(
                                onPressed: () => Get.toNamed(Routes.REGISTER),
                                child: Text(
                                  "Create account",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
