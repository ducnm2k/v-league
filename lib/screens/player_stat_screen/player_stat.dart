import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';

class PlayerStatisticScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffold(
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
    ),);
  }

  _header(context){
    return Column(
      children: [
        Text(
          "Player Stat",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _table(context){
    return DataTable(
        columns: [
          DataColumn(label: Text(
            "#",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          DataColumn(label: Text(
            "Name",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          DataColumn(label: Text(
            "FC",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          DataColumn(label: Text(
            "Goal",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(CupertinoButton(
              onPressed: () {},
              child: const Text('ABC'),
            )),
            DataCell(Text('AFC')),
            DataCell(Text('14'))
          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('BCD')),
            DataCell(Text('AFC')),
            DataCell(Text('12'))
          ]),
          DataRow(cells: [
            DataCell(Text('3')),
            DataCell(Text('CDE')),
            DataCell(Text('AFC')),
            DataCell(Text('8'))
          ]),
          DataRow(cells: [
            DataCell(Text('4')),
            DataCell(Text('DEF')),
            DataCell(Text('AFC')),
            DataCell(Text('8'))
          ]),
        ]
    );
  }
}