import 'package:flutter/material.dart';
import 'package:v_leauge/network/api/model/player.model.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';
import 'package:v_leauge/screens/player_stat_screen/compoment/data_table.dart';

import '../../network/api/model/pagination_model.dart';
import '../../repositoty/implement/player.implement.dart';

class PlayerStatisticScreen extends StatefulWidget {
  const PlayerStatisticScreen({Key? key}) : super(key: key);

  @override
  State<PlayerStatisticScreen> createState() => _PlayerStatisticScreenState();
}

class _PlayerStatisticScreenState extends State<PlayerStatisticScreen>
    with SingleTickerProviderStateMixin {
  late Future<PaginationModel<PlayerModel>> fetchPlayer;

  @override
  void initState() {
    super.initState();
    fetchPlayer = PlayerImplement().getPlayers();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    List<PaginationModel<PlayerModel>> newPlayerList;
    return Scaffold(
        appBar: buildAppBar(),
        body: FutureBuilder<PaginationModel<PlayerModel>>(
          future: fetchPlayer,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print( 'number of players:'  + snapshot.data!.result.length.toString() );
              return dataTable(snapshot.data!.result);
            }
            else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        )
    );
  }
}

