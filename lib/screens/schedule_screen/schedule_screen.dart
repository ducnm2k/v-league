import 'package:flutter/material.dart';
import 'package:v_leauge/repositoty/implement/tournament.implement.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';

import '../../network/api/model/pagination_model.dart';
import '../../network/api/model/round.model.dart';
import '../../network/api/model/tournament.model.dart';
import '../../repositoty/implement/round.implement.dart';
import '../../screens/schedule_screen/component/tabController.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> with SingleTickerProviderStateMixin{
  late Future<PaginationModel<TournamentsModel>> fetchTournament;
  late Future<PaginationModel<RoundModel>> fetchRound;

  @override
  void initState() {
    super.initState();
    fetchTournament =  TournamentsImplement().getTournaments();
    fetchRound = RoundImplement().getRound();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Scaffold(
      appBar: buildAppBar(),
      body: FutureBuilder<PaginationModel<RoundModel>>(
        future: fetchRound,
        builder: (context, snapshot){
          if(snapshot.hasData)
          {
            print( 'number of rounds:'  + snapshot.data!.result.length.toString());
            List<RoundModel> roundList = snapshot.data!.result;
            return DefaultTabController(
              length: roundList.length,
              child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  title: PreferredSize(
                      child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.white.withOpacity(0.7),
                      indicatorColor: Colors.white,
                        tabs:
                        roundList.map((e) => Tab(
                          child: Text(e.name),

                        )).toList(),
                    ),
                    preferredSize: Size.fromHeight(30.0),
                  ),
                ),
              ),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }


}


