import 'package:get/get.dart';
import 'package:getproject/controller/counter_controller.dart';

class CounterBinding extends Bindings{

  @override
  void dependencies(){
    Get.lazyPut<CounterController>(()=> CounterController());
  }

}