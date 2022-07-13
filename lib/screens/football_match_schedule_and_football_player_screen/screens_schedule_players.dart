import 'package:flutter/material.dart';
import 'package:v_leauge/screens/football_match_schedule_and_football_player_screen/football_player.dart';
import 'package:v_leauge/screens/home_screen/home_details.dart';

import 'football_schedule.dart';

class FootBallScreen extends StatefulWidget {
  const FootBallScreen({Key? key}) : super(key: key);

  @override
  State<FootBallScreen> createState() => _FootBallScreenState();
}

class _FootBallScreenState extends State<FootBallScreen>
    with SingleTickerProviderStateMixin {
  List<Tab> tabList = [
    Tab(
      child: Text("Lịch thi đấu"),
    ),
    Tab(
      child: Text("Cầu thủ"),
    ),
  ];
  static const List<Widget> _views = [
    Center(
        child: Scaffold(
      body: FootBallSchedule(),
    )),
    Center(
      child: Scaffold(
        body: FootBallPlayer(),
      ),
    ),
  ];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: TabBarView(
            children: _views,
            controller: tabController,

          ),

          color: Colors.green,
          //height: 300.0,
          //width: 500.0,
        ),
        // Container(
        //   child: TabBar(
        //     indicatorColor: Colors.green,
        //     isScrollable: true,
        //     labelColor: Colors.green,
        //     controller: tabController,
        //
        //     tabs: tabList,
        //   ),
        // ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 300.0,
            width: 500.0,
          ),
        ),
      ],
    );
    //   SafeArea(
    // child: Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.white,
    //     bottom: PreferredSize(
    //       preferredSize: Size.fromHeight(10.0),
    //       child: TabBar(
    //         indicatorColor: Colors.green,
    //         isScrollable: true,
    //         labelColor: Colors.green,
    //         controller: tabController,
    //         tabs: tabList,
    //       ),
    //     ),
    //   ),
    //
    //   body: TabBarView(
    //     controller: tabController,
    //     children: _views,
    //   ),
    // ),
    //
    //
    // );
  }
}
