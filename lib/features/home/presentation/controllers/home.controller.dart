import 'package:get/get.dart';

class HomeController extends GetController {

  static HomeController get to => Get.find();

  int counter = 0;

  void increment() {
    counter++;
    update();
  }
}

class HomeControllerX extends RxController {
  static HomeControllerX get to => Get.find();

  final count1 = 0.obs;
  final count2 = 0.obs;
  int get sum => count1.value + count2.value;
}