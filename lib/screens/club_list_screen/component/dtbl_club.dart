import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/network/api/model/player.model.dart';


class GetListPlayer extends StatefulWidget {
  const GetListPlayer({Key? key}) : super(key: key);

  @override
  State<GetListPlayer> createState() => _GetListUserState();
}

class _GetListUserState extends State<GetListPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

DataTable dataTable(List<PlayerModel> list) {
  return DataTable(
    columnSpacing: 30,
    dataRowHeight: 128,
    columns: [
      DataColumn(label: Text(
        "Name",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      )),
      DataColumn(label: Text(
        "Image",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      )),
      DataColumn(label: Text(
        "FC",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      )),
      DataColumn(label: Text(
        "Goal",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      )),
    ],

    rows:
    list.map(
      ((element) => DataRow(
        cells: <DataCell>[
          DataCell(Text(element.name)),
          if(element.imageUrl.isNotEmpty)
            DataCell(
                FittedBox
                  (
                    fit: BoxFit.contain,
                    child:
                    Image.network(element.imageUrl)
                )
            )
          else
            DataCell(
                FittedBox
                  (
                    fit: BoxFit.contain,
                    child:
                    Image(
                      image: AssetImage("assets/images/local-file-not-found.png"),
                    )
                )
            ),
          DataCell(Text('')),
          DataCell(Text('')),
        ],
      )),
    ).toList(),
  );
}