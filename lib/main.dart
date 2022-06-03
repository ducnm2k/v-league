import 'package:flutter/material.dart';
import 'package:v_leauge/screens/login_screen/compoment/login_screen.dart';



void main() async {
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

