import 'package:flutter/material.dart';


import 'compoment/appbar.dart';
import 'compoment/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";

  get padding => null;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.green),
                  accountName: Text(
                    "Guest",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: Text(
                    "",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  currentAccountPicture: Image(image: AssetImage("assets/images/anh_1.png")),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: GestureDetector(
                    child: Icon(Icons.account_balance),
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Schedule"),
                  leading: GestureDetector(
                    child: Icon(Icons.account_balance),
                    onTap: () {

                    },
                  ),
                  onTap: (){
                  },
                ),
                ListTile(
                  title: Text("Profile"),
                  leading: GestureDetector(
                    child: Icon(Icons.account_balance),
                    onTap: () {
                      // Action 1
                    },
                  ),
                  onTap: (){
                    // Navigator.push(context, route),
                  },
                ),
                ListTile(
                  title: Text("Profile Clup"),
                  leading: GestureDetector(
                    child: Icon(Icons.account_balance),
                    onTap: () {
                      // Action 2
                    },
                  ),
                  onTap: (){
                    // Navigator.push(context, route),
                  },
                ),
                ListTile(
                  title: Text("setting"),
                  leading: GestureDetector(
                    child: Icon(Icons.more_vert_sharp),
                    onTap: () {
                      // Action 1
                    },
                  ),
                  onTap: (){
                    // Navigator.push(context, route),
                  },
                ),
                ListTile(
                  title: Text("Login"),
                  leading: GestureDetector(
                    child: Icon(Icons.account_balance),
                    onTap: () {
                      // Action 1
                    },
                  ),
                ),
                ListTile(
                  title: Text("Register"),
                  leading: GestureDetector(
                    child: Icon(Icons.account_balance),
                    onTap: () {
                      // Action 1
                    },
                  ),
                ),
                AboutListTile( // <-- SEE HERE
                  icon: Icon(
                    Icons.info,
                  ),
                ),
              ],
            ),
          ),
          body: Body(),
        )
    );
  }

}
