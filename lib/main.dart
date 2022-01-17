import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
//import 'package:flutter_application_1/pages/PlantPage.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/pages/NurseryPage.dart';
import 'package:flutter_application_1/pages/CategoryPage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'dart:ffi';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.categoryRoute: (context) => CategoryPage(),
        MyRoutes.nurseryRoute: (context) => NurseryPage(),
        //MyRoutes.plantRoute: (context) => PlantPage()
      },
    );
  }
}
