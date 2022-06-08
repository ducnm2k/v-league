import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/screens/login_screen/login_screen.dart';
import 'package:v_leauge/screens/player_stat_screen/player_stat.dart';
import 'package:v_leauge/screens/profile_screen/profilepage.dart';

import 'screens/home_screen/home.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        home: LoginForm(),
     // initialRoute: HomeScreen.routeName,
     // routes: routes,
    );
  }
}

