// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mvc_design_pattern_with_getx/Bindings/myBindings.dart';
import 'package:mvc_design_pattern_with_getx/view/OBXX.dart';
import 'package:mvc_design_pattern_with_getx/view/getBuilder.dart';
import 'package:mvc_design_pattern_with_getx/view/getX.dart';
import 'package:mvc_design_pattern_with_getx/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Home(),
      initialBinding: MyBindings(),
      getPages: [
        GetPage(name: "/Home", page: () => Home()),
        GetPage(name: "/GetXX", page: () => Getx()),
        GetPage(name: "/OBXX", page: () => OBXX()),
        GetPage(name: "/GetBuilder", page: () => GetBuilderr()),
      ],
    );
  }
}


//GetBuilder  fast, takes little memory active (needs update funk)
//GetX        slower than Getbuilder more memory reactive (stream)
//OBX         slower than Getbuilder more memory reactive (stream)