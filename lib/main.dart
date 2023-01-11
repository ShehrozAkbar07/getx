import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_learning/home_screen.dart';
import 'package:getx_learning/page1.dart';
import 'package:getx_learning/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: (() => const HomeScreen())),
        GetPage(name: "/Page1", page: (() => const Page1())),
        GetPage(name: "/Page2", page: (() => const Page2()))
      ],
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.toNamed("/Page1?myname=shehroz&yourname=jeff");
              },
              child: Text("Go to Home")),
        ),
      ),
    );
  }
}
