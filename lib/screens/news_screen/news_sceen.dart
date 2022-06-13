import 'package:flutter/material.dart';

import '../../constants.dart';
import 'models/listItem.dart';


class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News>
    with SingleTickerProviderStateMixin{
  
  List<ListItem> listTiles = [
  // ListItem(loremIpsum.createWord(numWord: 6),),



  ];
  List<Tab> tabList = [
    Tab(
      child: Text("Popular"),),
    Tab(
      child: Text("Trending"),),
  ];

  late TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: tabList.length, vsync: this);
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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        centerTitle: true,
        title: Text("News",
        style: TextStyle(
          color: Colors.black,
        ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            controller: tabController,
            tabs: tabList,
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                itemCount: tabList.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){},

                  );
                },
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(8.0),
            child: Container(),
          ),

        ],
      ),
    );
  }
}
