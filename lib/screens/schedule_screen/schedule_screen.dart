import 'package:flutter/material.dart';
import 'package:v_leauge/screens/schedule_screen/component/body.dart';
class ScheduleScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: ScheduleBody(),
        ),
      ),
    )
    );
  }

}