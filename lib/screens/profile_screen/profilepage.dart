import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  Widget _textFormField(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
        child: TextFormField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            counterStyle: TextStyle(color: Colors.black),
            focusColor: Colors.black,
            icon: Icon(Icons.email),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              counterStyle: TextStyle(color: Colors.black),
              focusColor: Colors.black,
              icon: Icon(Icons.person),
              hintText: 'Fullname',
              hintStyle: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: TextFormField(
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              counterStyle: TextStyle(color: Colors.black),
              focusColor: Colors.black,
              icon: Icon(Icons.lock),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 55,
          width: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
    color: Color.fromARGB(90, 20, 20, 20),
    blurRadius: 10,
    offset: Offset(6,6),
    )
    ]
            ),
    child: RaisedButton(
      color: Color(0xfff6f6f6),
      onPressed: (){},
      child: Text('Update',style: TextStyle(color: Colors.blueAccent),),
          ),
        )

      ],
    );
  }
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xfff6f6f6),
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 250,
              left: 20,
              right: 20,
            ),
            child: SingleChildScrollView(

              child: _textFormField(),),
          ),
          Container(
            height: 180,
            color: Colors.white,
          ),
          Container(
            width: double.infinity,
            height: 190,
            margin: EdgeInsets.symmetric(
                vertical: 40,
            horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: Color(0xfff6f6f6),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(90, 20, 20, 20),
                  blurRadius: 0.8,
                  offset: Offset(9,9),
                ),
              ],
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 42,
                    backgroundImage: AssetImage("assets/images/login.png"),
                  ),
                ),
                SizedBox(height: 2,),
                Text('User',style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  }