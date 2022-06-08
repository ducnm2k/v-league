import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../login_screen/compoment/login_screen.dart';


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
              value: 1,
              child: Text("Profile"),
            ),
            PopupMenuItem(
              value: 2,
              child: Text("Sign In"),
            ),
            PopupMenuItem(
              value: 3,
              child: Text("Sign Up"),
            ),
            PopupMenuItem (
              value: 4,
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