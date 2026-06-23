
import 'package:get/get.dart';
import 'package:getproject/bindings/counter_bindings.dart';
import 'package:getproject/views/counter_views.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.counter,
    page: ()=>  CounterViews(),
    binding: CounterBinding(),
  ),
  ];
}