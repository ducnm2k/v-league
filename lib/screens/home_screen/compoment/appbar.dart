import 'package:flutter/material.dart';


AppBar buildAppBar() {
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
            PopupMenuItem(
              value: 4,
              child: Text("LogOut"),
            ),
          ]
      ),
    ],
  );
}