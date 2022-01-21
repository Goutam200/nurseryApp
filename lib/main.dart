import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
//import 'package:flutter_application_1/pages/PlantPage.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/pages/NurseryPage.dart';
import 'package:flutter_application_1/pages/CategoryPage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/Database.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'models/Catalog.dart';
import 'dart:ffi';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Plant> p1 = [
      Plant(
          id: 0,
          name: 'Null',
          description: "dummy",
          image: "dffs",
          daysWithoutCare: 3)
    ];

    return StreamProvider<List<Plant>>.value(
      value: DatabaseServices().Plants,
      initialData: p1,
      child: MaterialApp(
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
      ),
    );
  }
}
