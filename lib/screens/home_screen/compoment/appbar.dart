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
              child: Text("Linh"),
            ),
            PopupMenuItem(
              value: 2,
              child: Text("Chi"),
            ),
            PopupMenuItem(
              value: 3,
              child: Text("Đức"),
            ),
            PopupMenuItem(
              value: 4,
              child: Text("Hưng"),
            ),
          ]
      ),
    ],
  );
}