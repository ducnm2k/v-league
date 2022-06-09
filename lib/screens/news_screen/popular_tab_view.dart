import 'package:flutter/material.dart';
import 'package:v_leauge/screens/news_screen/read_new_view.dart';

import '../../widgets/primary_card.dart';
import 'models/news_model.dart';

class PopularTabView extends StatelessWidget {
  const PopularTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            padding: EdgeInsets.only(left: 18.0),
            child: ListView.builder(
                itemCount: popularList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                  var news = popularList[index];
                  return InkWell(
                    onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => ReadNewsView(news: news),
                        ),);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 12.0),
                        child: PrimaryCard(news: news),
                      ),

                  );
              },),
          ),
        ],
      ),
    );
  }
}
