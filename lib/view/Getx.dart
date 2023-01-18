// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_design_pattern_with_getx/controller/GetXXController.dart';

class Getx extends StatelessWidget {
  Getx({super.key});

  GetXXController GetXcontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX design pattern'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<GetXXController>(
                builder: (controller) =>
                    Text("First Number= ${controller.counter1}"),
              ),
              GetX<GetXXController>(
                builder: (controller) =>
                    Text("Second Number= ${controller.counter2}"),
              ),
              GetX<GetXXController>(
                builder: (controller) => Text("${controller.sum}"),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      GetXcontroller.incrementcounter1();
                    },
                    child: Text("add num 1"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      GetXcontroller.incrementcounter2();
                    },
                    child: Text("add num 2"),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      GetXcontroller.decrementcounter1();
                    },
                    child: Text("take num 1"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      GetXcontroller.decrementcounter2();
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
