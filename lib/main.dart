import 'package:cookery_craft/app/common_widgets/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType){
       return GetMaterialApp(
         theme: AppThemeData.lightTheme,
         debugShowCheckedModeBanner: false,
         title: "Cookery Craft",
         initialRoute: AppPages.INITIAL,
         getPages: AppPages.routes,
       );
      }
    ),
  );
}
