import 'package:flutter/material.dart';
<<<<<<< Updated upstream
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
=======
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';
import 'package:v_leauge/screens/schedule_screen/component/body.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
>>>>>>> Stashed changes
  }
}
