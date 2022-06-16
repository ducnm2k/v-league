import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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

DataTable dataTable() {
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