import 'package:flutter/material.dart';
import 'package:flutter_getx/home_getx.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
                () => Text(" The value is ${Get.find<HomeGetx>().count} ")
            ),
            SizedBox(height: 10.0,),
            ElevatedButton(onPressed: (){
              Get.find<HomeGetx>().increment();
            }, child: Text(" Increment button ")),
            SizedBox(height: 10.0,),
            ElevatedButton(onPressed: (){
              Get.back();
            }, child: Text(" Back "))
          ],
        ),
      ),
    );
  }
}
