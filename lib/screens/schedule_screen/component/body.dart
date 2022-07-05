import 'package:flutter/material.dart';
import 'package:v_leauge/screens/schedule_screen/component/rounds_tabs.dart';

class ScheduleBody extends StatefulWidget {
  const ScheduleBody({Key? key}) : super(key: key);

  @override
  State<ScheduleBody> createState() => _ScheduleBodyState();
}

List<Tab> tabs = <Tab>[
  Tab(text: "round 1",),
  Tab(text: "round 2",),
  Tab(text: "round 3",),
  Tab(text: "round 4",),
  Tab(text: "round 5",),
  Tab(text: "round 6",),
];

List<PopupMenuItem> listTournament = <PopupMenuItem>[
  PopupMenuItem(
      value: 2020,
      child: Text('2020'),
  ),
  PopupMenuItem(
    value: 2021,
    child: Text('2021'),
  ),
  PopupMenuItem(
    value: 2022,
    child: Text('2022'),
  ),
];

class _ScheduleBodyState extends State<ScheduleBody>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: TabBar(
              tabs: tabs,
            ),
            actions: [
              PopupMenuButton(
                  icon: Icon(Icons.calendar_today_rounded, color: Colors.white,),
                  itemBuilder: (context)=> listTournament,
              )
            ],
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Center(
                child: Text(
                  '${tab.text!} Tab',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }).toList(),
          ),
        );
      }),
    );
  }

}