import 'package:flutter_getx/first_controller.dart';
import 'package:flutter_getx/home_getx.dart';
import 'package:get/get.dart';

class SecondController implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstController>(() => FirstController());
    Get.lazyPut<HomeGetx>(() => HomeGetx());

  }
}