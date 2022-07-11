import 'package:flutter/material.dart';
import 'package:v_leauge/screens/football_match_schedule_and_football_player_screen/screens_schedule_players.dart';

import '../../../network/api/model/club.model.dart';

ListView buildListView(List<ClubModel> list) {
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: list.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        leading: Image.network(list.elementAt(index).imageUrl),
        title: Text(list.elementAt(index).name, textAlign: TextAlign.start,),
        onTap: (){
          //_clubDetail(list.elementAt(index).id);
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FootBallScreen()));
          });
        },
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}