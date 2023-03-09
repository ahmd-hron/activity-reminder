import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  final Color dropDownColor = const Color.fromARGB(255, 173, 196, 237);

  final appTheme = ThemeData(
    primaryColor: const Color.fromRGBO(243, 103, 102, 1),
    primarySwatch: Colors.purple,
    backgroundColor: Colors.grey,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      colorScheme: ColorScheme.light(),
      disabledColor: Colors.grey,
      focusColor: Colors.orange,
      textTheme: ButtonTextTheme.primary,
    ),
    brightness: Brightness.light,
    cardColor: Colors.blue,
    dividerColor: Colors.black,
    errorColor: Colors.red,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding:
          const EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 10),
      fillColor: const Color.fromRGBO(209, 207, 243, 1),
      border: OutlineInputBorder(
        borderSide: const BorderSide(style: BorderStyle.none),
        borderRadius: BorderRadius.circular(15.0),
      ),
      filled: true,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    iconTheme: const IconThemeData.fallback(),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.purple, size: 23),
    ),
  );
}
