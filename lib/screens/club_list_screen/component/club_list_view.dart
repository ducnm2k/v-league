import 'package:flutter/material.dart';

import '../../../network/api/model/club.model.dart';

ListView buildListView(List<ClubModel> list) {
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: list.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        leading: Image.network(list.elementAt(index).imageUrl),
        title: Text(list.elementAt(index).name, textAlign: TextAlign.start,),
        onLongPress: (){

        },
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}