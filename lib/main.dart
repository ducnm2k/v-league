import 'package:flutter/material.dart';
import 'package:v_leauge/routs.dart';
import 'package:v_leauge/screens/login_screen/compoment/login_screen.dart';
import 'package:v_leauge/screens/profile_screen/profilepage.dart';

import 'screens/home_screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
       home: ProfilePage(),
     // initialRoute: HomeScreen.routeName,
     // routes: routes,
    );
  }
}

