import 'package:get/get.dart';

class GetXXController extends GetxController {
  RxInt counter1 = 0.obs;
  RxInt counter2 = 0.obs;

  void incrementcounter1() {
    counter1 = counter1 + 1;
  }

  void incrementcounter2() {
    counter2 = counter2 + 1;
  }

  void decrementcounter1() {
    counter1 = counter1 - 1;
  }

  void decrementcounter2() {
    counter2--;
  }

  int get sum {
    return counter1.value + counter2.value;
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
