// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetBuilder MVC Design pattern'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.to(() => Getx());
                  // Get.toNamed("/GetXX");
                  // Get.off(() => Getx());
                  // Get.offNamed("/GetXX");
                  // Get.offAll(() => Getx());
                  Get.offAllNamed("/GetXX");
                },
                child: Text("GetX"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(() => GetBuilderr());
                  // Get.toNamed("/GetBuilder");
                  // Get.off(() => GetBuilderr());
                  // Get.offNamed("/GetBuilder");
                  // Get.offAll(() => GetBuilderr());
                  Get.offAllNamed("/GetBuilder");
                },
                child: Text("Get Builder"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(() => OBXX());
                  // Get.toNamed("/OBXX");
                  // Get.off(() => OBXX());
                  // Get.offNamed("/OBXX");
                  // Get.offAll(() => OBXX());
                  Get.offAllNamed("/OBXX");
                },
                child: Text("Obx"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
