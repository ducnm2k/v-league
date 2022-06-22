import 'package:flutter/material.dart';
import 'package:v_leauge/screens/home_screen/home_details.dart';
import 'package:v_leauge/screens/login_screen/login_screen.dart';


class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News>
    with SingleTickerProviderStateMixin{
  List<Tab> tabList = [
    Tab(
      child: Text("Trang chủ"),),
    Tab(
      child: Text("tin tức"),),
  ];
  static const List<Widget> _views = [
    Center(
        child:Scaffold(
          body: HomeDetails(),
        )
    ),
    Center(
        child: Scaffold(
          body: LoginForm(),
        ),
    ),
  ];

  late TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 2, vsync:this);
  }
  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
