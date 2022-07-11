import 'package:flutter/material.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';
import 'package:v_leauge/screens/schedule_screen/component/body.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<String> tournamentsList = [
    'tournament 1',
    'tournament 2',
    'tournament 3',
    'tournament 4',
  ];
  List<String> roundsList = [
    'round 1',
    'round 2',
    'round 3',
    'round 4',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          body: DefaultTabController(
            length: roundsList.length,
            child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  title: PreferredSize(
                      child: TabBar(
                          isScrollable: true,
                          unselectedLabelColor: Colors.white.withOpacity(0.7),
                          indicatorColor: Colors.white,
                          tabs:
                          roundsList.map((e) => Tab(child: Text(e),)).toList(),
                      ),
                      preferredSize: Size.fromHeight(30.0)),
                  actions: <Widget>[
                    PopupMenuButton(
                        icon: Icon(Icons.calendar_today_sharp),
                        itemBuilder:(context) =>
                        tournamentsList.map((e) => PopupMenuItem(child: Text(e),)).toList(),
                    ),
                  ],
                ),
                body: TabBarView(
                  children:
                    roundsList.map((e) => Container(
                      child: Center(
                        child: Text(e),
                      ),
                    )).toList(),
                )),
          ),
        )
    );
  }
}
