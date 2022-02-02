import 'package:flutter/material.dart';
import 'package:flutter_getx/app_controller.dart';
import 'package:flutter_getx/first_controller.dart';
import 'package:flutter_getx/home.dart';
import 'package:flutter_getx/home_controller_binding.dart';
import 'package:flutter_getx/second_controller.dart';
import 'package:get/get.dart';

void main() {
  AppController().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: SecondController(),
      title: " Binding GetX ",
      // getPages: [
      //   GetPage(name: '/home', page: ()=>Home(),binding: HomeControllerBinding()),
      // ],
      getPages: [
        GetPage(name: '/home', page: ()=>Home(), binding: BindingsBuilder(() => {
          Get.lazyPut<HomeControllerBinding>(() => HomeControllerBinding()),
        }))
      ],
      home: Scaffold(
        appBar: AppBar(title: Text(' Binding GetX '),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                  ()=>Text(' The value is ${Get.find<FirstController>().count}'),
              ),
              SizedBox(height: 10.0,),
              ElevatedButton(onPressed: (){
                Get.find<FirstController>().increment();
              }, child: Text(" Increment Button ")),
              SizedBox(height: 10.0,),
              ElevatedButton(onPressed: (){
                // Get.to(Home());
                // Get.toNamed("/home");
                Get.to(Home(), binding: HomeControllerBinding());
              }, child: Text("Home"))

            ],
          ),
        ),
      ),
    );
  }
}
