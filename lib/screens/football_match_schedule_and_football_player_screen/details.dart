import 'package:flutter/material.dart';
import 'package:v_leauge/screens/football_match_schedule_and_football_player_screen/cauthu.dart';
import 'package:v_leauge/screens/football_match_schedule_and_football_player_screen/match_detail.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details>
    with SingleTickerProviderStateMixin {
  List<Tab> tabList = [
    Tab(
      child: Text("Trận đấu"),
    ),
    Tab(
      child: Text("Cầu thủ"),
    ),
  ];
  static const List<Widget> _views = [
    Center(
      child: Scaffold(
        body: MatchDetail(),
      ),
    ),
    Center(
      child: Scaffold(
        body: CauThu(),
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
    return
      SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10.0),
              child: TabBar(
                indicatorColor: Colors.green,
                isScrollable: true,
                labelColor: Colors.green,
                controller: tabController,
                tabs: tabList,
              ),
            ),
          ),

          body: TabBarView(
            controller: tabController,
            children: _views,
          ),
        ),


      );
  }
}
