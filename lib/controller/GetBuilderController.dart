import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  int counter1 = 0;
  int counter2 = 0;

  void incrementcounter1() {
    counter1 = counter1 + 1;
    update();
  }

  void incrementcounter2() {
    counter2++;
    update();
  }

  void decrementcounter1() {
    counter1 = counter1 - 1;
    update();
  }

  void decrementcounter2() {
    counter2--;
    update();
  }

  int get sum {
    return counter1 + counter2;
  }

//                                  importanat!!!!!
//if we are uesing a life cycle its better to ues (Get.LazyPut) insted of (Get.Put)
  @override
  void onInit() {
    print("this will start the first");

    super.onInit();
  }

  @override
  void onReady() {
    print(
        "this will start after building the UI and while uesung the controller");

    super.onReady();
  }

  @override
  void onClose() {
    print("this will start when cloesing the page");

    super.onClose();
  }
}
