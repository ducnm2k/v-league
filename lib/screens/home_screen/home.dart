import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/screens/home_screen/compoment/body.dart';

import 'compoment/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(),
       body: Body(),
    ));//);
  }
}
