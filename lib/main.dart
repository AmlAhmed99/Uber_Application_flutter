import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber/provider/AppProvider.dart';
import 'package:uber/screens/Home.dart';
import 'package:uber/style/uberTheme.dart';


void main() {
  runApp(
      ChangeNotifierProvider<AppProvider>(
        create: (context)=>AppProvider(),
        child: MyApp(),
      ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:UberTheme.themeData,
      debugShowCheckedModeBanner: false,
      routes: {
        Home.HomeRoute:(context)=>Home()
      },
      initialRoute:Home.HomeRoute ,
    );
  }
}


