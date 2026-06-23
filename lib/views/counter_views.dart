import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/counter_controller.dart';

class CounterViews  extends GetMaterialApp{
  CounterViews({super.key});
  @override
  Widget build(BuildContext context) {
    CounterController c = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title: Text('GetX CounterApp Text'),),
      body: Center(
        child: Column(
          children: [
            Obx(()=> Text("${c.count}"),),
            Row(
            children: [
              ElevatedButton(onPressed: c.increment, child: Icon(Icons.add)),
              ElevatedButton(onPressed: c.decrement, child: Icon(Icons.remove)),
            ],
            )
          ],
        ),
      ),
    );
  }
}