import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:v_leauge/screens/profile_screen/profilepage.dart';


import '../../login_screen/login_screen.dart';
import '../../sign_up_screen/sign_up_screen.dart';

AppBar buildAppBar() {
  GoogleSignIn _googleSignin = GoogleSignIn();
  User? user = FirebaseAuth.instance.currentUser;
  return AppBar(
    title: Text("V LEAGUES"),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
    ),
    centerTitle: true,
    automaticallyImplyLeading: true,
    actions: <Widget>[
      PopupMenuButton(
          icon: Icon(Icons.account_circle),
          itemBuilder: (context)=>[
            PopupMenuItem(
              value: 0,
              child: Text("Profile"),
              onTap: (){
                 WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage()));
                });
              },
            ),
            PopupMenuItem(
              value: 1,
              child: Text("Sign In"),
              onTap: (){
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
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
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
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