import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

// / * If we want that every time the value of variable changes
// then all the widgets which uses the variable must update i tself
// then the variable must be reactive or observable and to make i t
// Reactive (Rx) . obs is used with variable value.
// To update the widget which uses Rx variabl must be placed ins if
// Obx ( ( ) Your widget which uses Rx)
// The widget will only update if and only if the Rx variable value changes.
// Other ways of making the variable Rx
// The first is using Rx {Type}.
// 1
// ini tial value is recommended, but not mandatory
// final name = RxString(' ')
class _Page2State extends State<Page2> {
  RxInt count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 100),
        child: Column(children: [
          const SizedBox(
            height: 400,
          ),
          Obx(
            () => Text(
              "Counter value is $count",
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              increment();
            },
            child: Text("Press it"),
          )
        ]),
      ),
    );
  }
}
