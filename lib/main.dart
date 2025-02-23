import 'package:bot_toast/bot_toast.dart';
import 'package:cookery_craft/app/common_widgets/app_theme.dart';
import 'package:cookery_craft/ui/widgets/unfocus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        theme: AppThemeData.lightTheme,
        debugShowCheckedModeBanner: false,
        title: "Feast Flow",
        initialRoute: AppPages.INITIAL,
        builder: (BuildContext context, Widget? child) {
          child = BotToastInit()(context, child);
          child = UnFocus(child: child);
          return child;
        },
        navigatorObservers: [
          BotToastNavigatorObserver(),
        ],
        getPages: AppPages.routes,
      );
    }),
  );
}
