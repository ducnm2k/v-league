import 'package:flutter/material.dart';

import '../login_screen/compoment/screen.dart';

class SignUpScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _header(context),
            _intputFields(context),
            _logInfo(context),
          ],),
      ),
    ));
  }

  _header(context)
  {
    return Column(
      children: [
        Text(
          "V League",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Create your Account")
      ],
    );
  }

  _intputFields(context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Email",
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "Password",
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "Confirm password",
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.password_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: (){},
          child: Text(
            "Sign Up",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
            primary: Colors.green,
          ),
        )
      ],
    );
  }
  _logInfo(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?"),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginForm()));
        }, child: Text("Login")),

      ],
    );
  }
}