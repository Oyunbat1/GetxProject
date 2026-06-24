import 'package:get/get.dart';
import 'package:getproject/logic/counter_binding.dart';
import 'package:getproject/route/app_routes.dart';
import 'package:getproject/view/counter_view.dart';


class AppPages {
 static final pages = [
   GetPage(
     name: AppRoutes.counter,
     page: ()=> CounterView(),
     binding: CounterBinding()
   )
 ];
}