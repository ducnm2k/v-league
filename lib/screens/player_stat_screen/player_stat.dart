import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/network/api/model/player.model.dart';

import '../../network/api/model/pagination_model.dart';
import '../../repositoty/implement/player.implement.dart';


class PlayerStatisticScreen extends StatefulWidget {
  const PlayerStatisticScreen({Key? key}) : super(key: key);


  @override
  State<PlayerStatisticScreen> createState() => _PlayerStatisticScreenState();
}

class _PlayerStatisticScreenState extends State<PlayerStatisticScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Future<PaginationModel<PlayerModel>> fetchPlayer ;

  @override
  void initState() {
    super.initState();
    fetchPlayer = PlayerImplement().getPlayers();
    // _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: FutureBuilder<PaginationModel<PlayerModel>>(
  future: fetchPlayer,
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return Image.network(snapshot.data!.result[3].imageUrl);
    }if(snapshot.hasData){
      return Text(snapshot.data!.result[3].name);
    }
    else if (snapshot.hasError) {
      return Text('${snapshot.error}');
    }

    // By default, show a loading spinner.
    return const CircularProgressIndicator();
  },
)
        // FutureBuilder<List<Player>>(

        //  // future:listWidget(item),
        //   builder: (context, snapshot) {
        //     if (snapshot.hasData) {
        //       return ListView.separated(
        //           itemBuilder: (context, index) {
        //             var player = (snapshot.data as List<Player>)[index];
        //             return Container(
        //               padding: EdgeInsets.all(10),
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: <Widget>[
        //                   Text(player.name, style: TextStyle( fontWeight: FontWeight.bold, fontSize: 22)),
        //                   SizedBox(height: 5),
        //                   Text(player.dateOfBirth.timeZoneName),
        //                   SizedBox(height: 5),
        //                   Text(player.imageUrl),
        //                 ],
        //               ),
        //             );
        //           },
        //           separatorBuilder: (context, index) {
        //             return Divider();
        //           },
        //           itemCount: (snapshot.data as List<Player>).length);
        //     } else if (snapshot.hasError) {
        //       //return Center( child: Text(“${snapshot.error}”));
        //     }
        //     // return Center(
        //     //   child: CircularProgressIndicator(backgroundColor: Colors.cyanAccent),
        //     // );
        //   },
        // )
         );
  }
}




// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:v_leauge/network/api/model/player.dart';
//
// import '../home_screen/compoment/appbar.dart';
// import 'compoment/data_table.dart';
//
// class PlayerStatisticScreen extends StatefulWidget {
//   const PlayerStatisticScreen({Key? key}) : super(key: key);
//

// // class PlayerStatisticScreen extends StatelessWidget{
// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     return MaterialApp(home: Scaffold(
// //       appBar: buildAppBar(),
// //       body: Container(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //           children: [
// //             _header(context),
// //             _table(context),
// //           ],
// //         ),
// //       ),
// //     ),);
// //   }
// //
// //   _header(context){
// //     return Column(
// //       children: [
// //         Text(
// //           "Player Stat",
// //           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
// //         ),
// //       ],
// //     );
// //   }
// //
// //   _table(context){
// //     return dataTable();
// //   }
// // }