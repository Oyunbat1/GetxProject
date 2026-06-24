

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getproject/route/app_routes.dart';
import 'package:getproject/route/app_pages.dart';
import 'package:get/get.dart';

void main()=> runApp(const MyApp());

class MyApp extends GetMaterialApp{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'GetX Prac',
      initialRoute: AppRoutes.counter ,
      getPages: AppPages.pages,
    );
  }
}