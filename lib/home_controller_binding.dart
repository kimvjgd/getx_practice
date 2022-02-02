import 'package:flutter_getx/home_getx.dart';
import 'package:get/get.dart';

class HomeControllerBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeGetx>(() => HomeGetx());
  }
}