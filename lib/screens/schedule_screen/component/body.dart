import 'package:flutter/material.dart';

class ScheduleBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _header(context),
            _table(context),
          ],
        ),
      ),
    ));
  }
  
}

_header(context){

}

_table(context){

}