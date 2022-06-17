import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';
=======
import 'package:v_leauge/network/api/model/player.model.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';

import '../../network/api/model/pagination_model.dart';
import '../../repositoty/implement/player.implement.dart';

class PlayerStatisticScreen extends StatefulWidget {
  const PlayerStatisticScreen({Key? key}) : super(key: key);

<<<<<<< HEAD
>>>>>>> main

=======
>>>>>>> main
  @override
<<<<<<< HEAD
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
=======
  State<PlayerStatisticScreen> createState() => _PlayerStatisticScreenState();
}

class _PlayerStatisticScreenState extends State<PlayerStatisticScreen>
    with SingleTickerProviderStateMixin {
  late Future<PaginationModel<PlayerModel>> fetchPlayer;

  @override
  void initState() {
    super.initState();
    fetchPlayer = PlayerImplement().getPlayers();
<<<<<<< HEAD
    // _controller = AnimationController(vsync: this);
>>>>>>> main
=======
>>>>>>> main
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
        body: FutureBuilder<PaginationModel<PlayerModel>>(
      future: fetchPlayer,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Row(
                        children: [
                          Text(snapshot.data!.result[3].name),
                          SizedBox(height: 5),
                          Image.network(snapshot.data!.result[3].imageUrl, height: 100, width: 100,),
                          SizedBox(height: 5),
                          Text(snapshot.data!.result[3].dateOfBirth.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
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
