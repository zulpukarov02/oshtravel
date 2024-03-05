import 'package:get/get.dart';

class WellkomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WellkomController>(() =>
        WellkomController()); // Pass a function that returns a WellkomController
  }
}

class WellkomController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;
}
