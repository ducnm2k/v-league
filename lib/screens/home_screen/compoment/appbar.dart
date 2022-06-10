import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:v_leauge/screens/home_screen/home.dart';


import '../../login_screen/login_screen.dart';
import '../../sign_up_screen/sign_up_screen.dart';


AppBar buildAppBar() {
  GoogleSignIn _googleSignin = GoogleSignIn();
  return AppBar(
    title: Text("V LEAGUES"),
    backgroundColor: Colors.green,
    centerTitle: true,
    automaticallyImplyLeading: true,

    actions: <Widget>[
      PopupMenuButton(
          icon: Icon(Icons.account_circle),
          itemBuilder: (context)=>[
            PopupMenuItem(
              value: 0,
              child: Text("Profile"),

            ),
            PopupMenuItem(
              value: 1,
              child: Text("Sign In"),
              onTap: (){
                WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginForm()));
                });
              },
            ),
            PopupMenuItem(
              value: 2,
              child: Text("Sign Up"),
              onTap: (){
                WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                });
              },
            ),
            PopupMenuItem (
              value: 3,
              child: Text("LogOut"),
              onTap: () async{
                await _googleSignin.signOut();
                await FirebaseAuth.instance.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginForm()));
              },
            ),
          ]
      ),
    ],
  );
}