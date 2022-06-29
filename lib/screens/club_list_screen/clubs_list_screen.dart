import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/repositoty/implement/club.implement.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';

import '../../network/api/model/club.model.dart';
import '../../network/api/model/pagination_model.dart';
import '../player_stat_screen/compoment/data_table.dart';

class ClubsListScreen extends StatefulWidget{
  const ClubsListScreen({Key? key}) : super(key: key);

  @override
  State<ClubsListScreen> createState() => _ClubsListScreenState();
}

class _ClubsListScreenState extends State<ClubsListScreen> with SingleTickerProviderStateMixin
{
  late Future<PaginationModel<ClubModel>> fetchClub;

  @override
  void initState() {
    super.initState();
    fetchClub =  ClubImplement().getClubs();
  }

  @override
  void dispose() {
    super.dispose();
  }
  // Future getClub() async {
  //   fetchClub =  ClubImplement().getClubs();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    body: FutureBuilder<PaginationModel<ClubModel>>(
      future: fetchClub,
        builder: (context, snapshot)
        {
          if (snapshot.hasData)
            {
              print( 'number of clubs:'  + snapshot.data!.result.length.toString());
              // return Container(
              //   padding: EdgeInsets.all(10),
              //   child: SingleChildScrollView(

              //   ),
              // );
            }
          else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        }
    ),
    );
  }

}
