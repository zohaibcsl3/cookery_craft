import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'app_colors.dart';

class AppThemeData {
  //
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: appLayoutBackground,
    primaryColor: appColorPrimary,
    primaryColorDark: appColorPrimary,
    hoverColor: Colors.white54,
    dividerColor: appShadowColor,
    fontFamily: 'Poppins',
    appBarTheme: AppBarTheme(
      elevation: 0,
      // titleTextStyle: TextStyle(
      //   color: Colors.black,
      //   fontFamily: 'Poppins',
      //   fontSize: 22.0,
      // ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 22.0,
      ),
      shadowColor: Colors.white,
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
    cardTheme: CardTheme(color: Colors.white),
    cardColor: Colors.white,
    iconTheme: IconThemeData(color: appTextColorPrimary),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: appBackgroundColor),
    textTheme: TextTheme(
      labelLarge: TextStyle(color: appColorPrimary, fontFamily: 'Poppins'),
      titleLarge: TextStyle(color: appTextColorPrimary, fontFamily: 'Poppins'),
      titleSmall: TextStyle(color: appTextColorSecondary, fontFamily: 'Poppins'),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme:
        ColorScheme.light(primary: appColorPrimary).copyWith(error: Colors.red),
    useMaterial3: false,
    highlightColor: appColorPrimary.withOpacity(0.2),
    indicatorColor: appColorPrimary,
    hintColor: Colors.grey,
    focusColor: appColorPrimary.withOpacity(0.12),
    disabledColor: Colors.grey,
    unselectedWidgetColor: Colors.grey,
    shadowColor: Colors.black,
    primaryIconTheme: const IconThemeData(color: appColorPrimary),
    bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.white,
        elevation: 0,
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 4.0,
        )),
    buttonTheme: const ButtonThemeData(
      buttonColor: appColorPrimary,
      textTheme: ButtonTextTheme.primary,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: const BorderSide(
            width: 5.0,
            color: appColorPrimary,
          ),
        ),
        textStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18.0,
          color: appColorPrimary,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
      ),
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      tilePadding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 0.0,
      ),
      childrenPadding: EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 0.0,
      ),
      shape: RoundedRectangleBorder(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: appColorPrimary,
        foregroundColor: appTextColorPrimary,
        textStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      focusColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          width: 2.0,
          color: Colors.white,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: appColorPrimary),
      ),
      hintStyle: const TextStyle(color: Colors.grey),
      labelStyle: const TextStyle(color: Colors.grey),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: appColorPrimary,
      foregroundColor: appTextColorPrimary,
    ),
    dividerTheme: const DividerThemeData(
      color: appShadowColor,
      thickness: 0.3,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: appBackgroundColorDark,
    highlightColor: appBackgroundColorDark,
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 22.0,
      ),
      color: appBackgroundColorDark,
      shadowColor: appBackgroundColorDark,
      iconTheme: IconThemeData(color: Colors.white),
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    ),
    primaryColor: colorPrimaryBlack,
    dividerColor: Color(0xFFDADADA).withOpacity(0.3),
    primaryColorDark: colorPrimaryBlack,
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
    hoverColor: Colors.black12,
    fontFamily: 'Poppins',
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: appBackgroundColorDark),
    primaryTextTheme: TextTheme(
        titleLarge:
            TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 24.0),
        labelSmall:
        TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 24.0)),
    cardTheme: CardTheme(color: cardBackgroundBlackDark),
    cardColor: appSecondaryBackgroundColor,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      labelLarge: TextStyle(color: colorPrimaryBlack, fontFamily: 'Poppins'),
      titleLarge: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
      titleSmall: TextStyle(color: Colors.white54, fontFamily: 'Poppins'),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.dark(
            primary: appBackgroundColorDark, onPrimary: cardBackgroundBlackDark)
        .copyWith(secondary: Colors.white)
        .copyWith(error: Color(0xFFCF6676)),
    useMaterial3: false,
    indicatorColor: appBackgroundColorDark,
    hintColor: Colors.grey,
    focusColor: appBackgroundColorDark.withOpacity(0.12),
    disabledColor: Colors.grey,
    unselectedWidgetColor: Colors.grey,
    shadowColor: Colors.black,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    bottomAppBarTheme: const BottomAppBarTheme(
        color: appBackgroundColorDark,
        elevation: 0,
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 4.0,
        )),
    buttonTheme: const ButtonThemeData(
      buttonColor: colorPrimaryBlack,
      textTheme: ButtonTextTheme.primary,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: const BorderSide(
            width: 5.0,
            color: colorPrimaryBlack,
          ),
        ),
        textStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18.0,
          color: colorPrimaryBlack,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
      ),
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      tilePadding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 0.0,
      ),
      childrenPadding: EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 0.0,
      ),
      shape: RoundedRectangleBorder(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorPrimaryBlack,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 8.0,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorPrimaryBlack,
      focusColor: colorPrimaryBlack,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          width: 2.0,
          color: Colors.white,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: colorPrimaryBlack),
      ),
      hintStyle: const TextStyle(color: Colors.white),
      labelStyle: const TextStyle(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: colorPrimaryBlack,
      foregroundColor: Colors.white,
    ),
    dividerTheme: const DividerThemeData(
      color: appShadowColor,
      thickness: 0.3,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
