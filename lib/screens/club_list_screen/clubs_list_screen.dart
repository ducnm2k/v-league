import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';

class ClubsListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _header(context),
                _table(context),
              ],
            ),
          ),
        )
    );
  }

}

_header(context){
  return Column(
    children: [
      Text(
        "CÂU LẠC BỘ",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

_table(context){
  return DataTable(
    dataRowHeight: 128,
      columns: [
        DataColumn(label: Text(
          "#"
        )),
        DataColumn(label: Text(
            "Logo"
        )),
        DataColumn(label: Text(
            "Tên CLB"
        )),
        DataColumn(label: Text(
            "Sân"
        )),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('1')),
          DataCell(FittedBox(
            fit: BoxFit.contain,
            child: Image(
                image: AssetImage("assets/images/logo_bfc.png"),
              height: 128,
              width: 128,
            ),
          )),
          DataCell(CupertinoButton(
            onPressed: () {},
            child: const Text('BFC'),
          )),
          DataCell(Text('...')),
        ]),
        DataRow(cells: [
          DataCell(Text('1')),
          DataCell(FittedBox(
            fit: BoxFit.contain,
            child: Image(
              image: AssetImage("assets/images/logo_hanoi.png"),
              height: 128,
              width: 128,
            ),
          )),
          DataCell(CupertinoButton(
            onPressed: () {},
            child: const Text('HFC'),
          )),
          DataCell(Text('...')),
        ]),
      ]
  );
}