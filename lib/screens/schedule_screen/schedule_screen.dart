import 'package:flutter/material.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';
import 'package:v_leauge/screens/schedule_screen/component/body.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<String> tournamentsList = [];
  List<String> roundsList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          body: ScheduleBody(),
        )
    );
  }
}
