import 'package:get/get.dart';
import 'package:mvc_design_pattern_with_getx/controller/GetBuilderController.dart';
import 'package:mvc_design_pattern_with_getx/controller/GetXXController.dart';

/*
Binding helps us to write clean code and separate methodes from the view(UI).

we can do Binding in 3 ways:
1- inside routs 
        GetPage(name: "/Home", page: () => Home(), binding: MyBindings()),
2- inside navigating to another pages
        Get.to(() => home(),binding: MyBindings());
3- by doing initialBinding: MyBindings(), and doing binding class like this O_O
*/
class MyBindings implements Bindings {
  @override
  void dependencies() {
    // final controller = Get.lazyPut(() => GetBuilderController(), fenix: true);

    // final GetXcontroller = Get.lazyPut(() => GetXXController());

    GetXXController GetXcontroller =
        Get.put(GetXXController(), permanent: true);

    GetBuilderController controller =
        Get.put(GetBuilderController(), permanent: true);
  }
}
  /*
-Get.lazyPut will initilase only 1 time so that we ues fenix: true
-fenix: true will be init everytime we needed but it will delete all the data
-we ues Get.find() if we want to find injected methods 
-permanent Default value is false it helps us to not Delete the data after leaving the page
  permanent = true ==>dont delete
-if permanent was uesed there is no need to ues init: controller buTTTTT if we uesed init,
  its ok cuz it will not be initilased again
*/