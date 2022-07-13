import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/footer_bar.dart';
import 'package:v_leauge/screens/football_match_schedule_and_football_player_screen/football_schedule.dart';
import 'package:v_leauge/screens/football_match_schedule_and_football_player_screen/screens_schedule_players.dart';
import 'package:v_leauge/screens/login_screen/login_screen.dart';
import 'package:v_leauge/screens/news_screen/news_ui.dart';
import 'package:v_leauge/screens/profile_screen/profilepage.dart';
import 'package:v_leauge/services/local-notification_service.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

       // primarySwatch: Colors.green,

        primarySwatch: Colors.blue,

      ),

      home: FootBallScreen(),
      //home: Notification(),
      routes: {
        "red": (_) => FooterBar(),
        "green": (_) => LoginForm(),
      },
    );
  }
}
class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  _Notification createState() => _Notification();
}

class _Notification extends State<Notification> {
  late final String title;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LocalnotificationService.initialize(context);

    ///gives you the message on which user taps
    ///and it opened the app from terminated state
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        final routeFromMessage = message.data["route"];
        Navigator.of(context).pushNamed(routeFromMessage);
      }
    });

    ///forground work
    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {
        print(message.notification!.body);
        print(message.notification!.title);
      }

      LocalnotificationService.display(message);
    });

    ///When the app is in background but opened and user taps
    ///on the notification
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      final routeFromMessage = message.data["route"];
      Navigator.of(context).pushNamed(routeFromMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: FooterBar(),
      ),
    );
  }
}
