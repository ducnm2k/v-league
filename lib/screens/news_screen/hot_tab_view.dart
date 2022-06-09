import 'package:flutter/material.dart';
import 'package:v_leauge/screens/news_screen/models/news_model.dart';
import 'package:v_leauge/screens/news_screen/read_new_view.dart';

import '../../widgets/primary_card.dart';

class HotTabView extends StatelessWidget {
  const HotTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hotList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var hot = hotList[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReadNewsView(news: hot),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            height: 300.0,
            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
            child: PrimaryCard(news: hot),
          ),
        );
      },
    );
  }
}
