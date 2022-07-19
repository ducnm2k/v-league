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

ListView dataTable(List<PlayerModel> list) {
  // return DataTable(
  //   columnSpacing: 50,
  //   dataRowHeight: 100,
  //     columns: [
  //       DataColumn(label: Text(
  //         "Name",
  //         style: TextStyle(fontSize: 16, ),
  //       )),
  //       DataColumn(label: Text(
  //         "Image",
  //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  //       )),
  //       DataColumn(label: Text(
  //         "FC",
  //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  //       )),
  //       DataColumn(label: Text(
  //         "Goal",
  //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  //       )),
  //     ],
  //
  //
  //
  //     rows:
  //     list.map(
  //       ((element) => DataRow(
  //         cells: <DataCell>[
  //           DataCell(Text(element.name, style: TextStyle(fontSize: 13),)),
  //           if(element.imageUrl.isNotEmpty)
  //           DataCell(
  //             Image.network(element.imageUrl),
  //           //     FittedBox
  //           //       (
  //           //         fit: BoxFit.contain,
  //           //         child:
  //           //         Image.network(element.imageUrl)
  //           //     )
  //            )
  //
  //           else
  //             DataCell(
  //                 FittedBox
  //                   (
  //                     fit: BoxFit.fitHeight,
  //                     child:
  //                     Image(
  //                       image: AssetImage("assets/images/local-file-not-found.png"),
  //                     )
  //                 )
  //             ),
  //           DataCell(Text('')),
  //           DataCell(Text('')),
  //           if(element.imageUrl.isNotEmpty)
  //           DataCell(Image.network(element.imageUrl, height: 100, width: 100,))
  //           else
  //              DataCell(
  //                Text(element.dateOfBirth!.timeZoneName),
  //              ),
  //            DataCell(Text('')),
  //            DataCell(Text('')),
  //         ],
  //       )),
  //     ).toList(),
  // );
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        leading: Image.network(list.elementAt(index).imageUrl),
        title: Text(list.elementAt(index).name, textAlign: TextAlign.start,),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}