import 'package:flutter/material.dart';
import 'package:flutter_getx/first_controller.dart';
import 'package:flutter_getx/home.dart';
import 'package:flutter_getx/second_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: SecondController(),
      title: " Binding GetX ",
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
                Get.to(Home());
              }, child: Text("Home"))

            ],
          ),
        ),
      ),
    );
  }
}
