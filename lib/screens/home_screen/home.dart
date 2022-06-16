import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../network/api/model/pagination_model.dart';
import '../../network/api/model/player.model.dart';
import '../../repositoty/implement/player.implement.dart';
import 'compoment/appbar.dart';
import 'compoment/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //late Future<PaginationModel<PlayerModel>> fetchPlayer ;
  @override
  void initState() {
    super.initState();
    //fetchPlayer = PlayerImplement().getPlayers();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(),
          body: Body(),
//        body:FutureBuilder<PaginationModel<PlayerModel>>(
//   future: fetchPlayer,
//   builder: (context, snapshot) {
//     if (snapshot.hasData) {
//       //return Text(snapshot.data!.result[1].imageUrl);
//       return Image.network(snapshot.data!.result[1].imageUrl);
//     } else if (snapshot.hasError) {
//       return Text('${snapshot.error}');
//     }
//
//     // By default, show a loading spinner.
//     return const CircularProgressIndicator();
//   },
// )
    ));//);
  }
}
