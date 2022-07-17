import 'package:flutter/material.dart';
import 'package:v_leauge/screens/football_match_schedule_and_football_player_screen/screens_schedule_players.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';

class FootBallMain extends StatelessWidget {
  const FootBallMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        backgroundColor: Colors.black38,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  CircleAvatar(
                    radius: 45,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 42,
                      backgroundImage: AssetImage('assets/images/logo_hanoi.png'),
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text('Name',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                  )
                ],
              )
            ),
            Expanded(
              flex: 3,
                child: Scaffold(
              body: FootBallScreen(),
            ))
          ],
        ),
      ),
    );
  }
}
