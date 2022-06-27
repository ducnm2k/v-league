import 'package:flutter/material.dart';
class ScheduleScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Row(
            children: [
              Image.asset('assets/images/logo.jpg'),
            ],
          ),
        ),
      ),
    )
    );
  }

}