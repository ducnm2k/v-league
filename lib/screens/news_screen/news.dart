import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/constants.dart';
import 'package:v_leauge/screens/news_screen/popular_tab_view.dart';

import 'hot_tab_view.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  String get author => author;

  String get title => title;

  String get time => time;

  String get image => image;

  get seen => seen;

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Column(
            children: [
            Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: Colors.black ,
                  unselectedLabelColor: kGrey1,
                  unselectedLabelStyle: TextStyle(
                      color: kBlack, fontWeight: FontWeight.bold, fontSize: 16.0),
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: TextStyle(
                  fontSize: 16.0,
                  color: kBlack,
                  fontWeight: FontWeight.bold,
                ),
                  tabs: [
                    Tab(text: "Popular"),
                    Tab(text: "Hot"),
                  ],
                ),
            ),
            ],
          ),
        ),
      body: TabBarView(
        children: [
          PopularTabView(),
          HotTabView(),
        ],
      ),
      ),
    );
  }
}
