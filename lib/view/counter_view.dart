

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getproject/logic/counter_controller.dart';

class CounterView  extends GetView<CounterController>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('GetX LasVegas Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World'),
            Obx(()=> Text('${controller.count}')),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: controller.increment, child: Icon(Icons.add)),
                SizedBox(width: 12,),
                ElevatedButton(onPressed: controller.decrement, child: Icon(Icons.remove))
              ],
            )
          ],
        ),
      ),
    );
  }
}