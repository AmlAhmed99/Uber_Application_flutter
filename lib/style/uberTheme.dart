import 'package:flutter/material.dart';
import 'package:uber/style/Colors.dart';

class UberTheme{

 static ThemeData themeData=ThemeData(
    primaryColor:MyColors.primaryColor,
    appBarTheme: AppBarTheme(
      color: MyColors.primaryColor
    ),
  );
}