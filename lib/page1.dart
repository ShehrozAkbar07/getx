import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 400,
          ),
          Text(
              "My name is ${Get.parameters['myname']} and your name is ${Get.parameters['yourname']}"),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/Page2");
              },
              child: Text("Go to Page2")),
        ],
      )),
    );
  }
}
