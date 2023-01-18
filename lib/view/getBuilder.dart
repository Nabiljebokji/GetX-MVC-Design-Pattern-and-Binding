// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_design_pattern_with_getx/controller/GetBuilderController.dart';

class GetBuilderr extends StatelessWidget {
  GetBuilderr({super.key});

  GetBuilderController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetBuilder MVC Design pattern'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<GetBuilderController>(
                builder: (controller) =>
                    Text("First Number= ${controller.counter1}"),
              ),
              GetBuilder<GetBuilderController>(
                builder: (controller) =>
                    Text("Second Number= ${controller.counter2}"),
              ),
              GetBuilder<GetBuilderController>(
                builder: (controller) => Text("${controller.sum}"),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.incrementcounter1();
                    },
                    child: Text("add num 1"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.incrementcounter2();
                    },
                    child: Text("add num 2"),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.decrementcounter1();
                    },
                    child: Text("take num 1"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.decrementcounter2();
                    },
                    child: Text("take num 2"),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(() => home());
                  // Get.toNamed("/Home");
                  // Get.off(() => home());
                  // Get.offNamed("/Home");
                  // Get.offAll(() => home());
                  Get.offAllNamed("/Home");
                },
                child: Text("Back"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
