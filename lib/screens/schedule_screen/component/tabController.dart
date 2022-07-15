// import 'package:flutter/material.dart';
// import 'package:v_leauge/repositoty/implement/round.implement.dart';
//
// import '../../../network/api/model/pagination_model.dart';
// import '../../../network/api/model/round.model.dart';
// import '../../../network/api/model/tournament.model.dart';
//
//
//
// DefaultTabController _buildScheduleTab(List<RoundModel> roundList, List<TournamentsModel> tournamentList) {
//   List<RoundModel> _2ndRoundList;
//   return DefaultTabController(
//     length: roundList.length,
//     child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.transparent,
//           title: PreferredSize(
//               child: TabBar(
//                 isScrollable: true,
//                 unselectedLabelColor: Colors.white.withOpacity(0.7),
//                 indicatorColor: Colors.white,
//                 tabs:
//                 roundList.map((e) => Tab(child: Text(e.name),)).toList(),
//               ),
//               preferredSize: Size.fromHeight(30.0)),
//           actions: <Widget>[
//             PopupMenuButton(
//               icon: Icon(Icons.calendar_today_sharp),
//               itemBuilder:(context) =>
//                   tournamentList.map((e) => PopupMenuItem(
//                     child: Text(e.name),
//                     onTap: (){
//                       _2ndRoundList = roundList.where((i) => (i.tournamentId == e.id)).toList();
//                       _buildScheduleTab(_2ndRoundList, tournamentList);
//                     },)).toList(),
//             ),
//           ],
//         ),
//         body: TabBarView(
//           children:
//           roundList.map((e) => Container(
//             child: Center(
//               child: Text(e.name),
//             ),
//           )).toList(),
//         )),
//   );
// }