import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';
import 'package:v_leauge/screens/login_screen/compoment/page_title_bar.dart';
import 'package:v_leauge/screens/login_screen/compoment/under_part.dart';
import 'package:v_leauge/screens/sign_up_screen/sign_up_screen.dart';
import 'package:v_leauge/services/firebase_service.dart';

import '../../constants.dart';
import '../../footer_bar.dart';
import '../../ui/widgets/widgets.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    // GoogleSignIn googleSignIn = GoogleSignIn(
    //   scopes: ['email']
    // );

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/logo.jpg',
                    height: 200,
                  ),
                ),
                const PageTitleBar(title: 'Login to your account'),
                Padding(
                    padding: const EdgeInsets.only(top: 320.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          // iconButton(context),
                          ElevatedButton(
                            onPressed: () async {
                              setState((){
                                isLoading = true;
                              });
                              FirebaseService service = new FirebaseService();
                              try {
                                await service.signInWithGoogle();
                                //Navigator.pushNamedAndRemoveUntil(context, Constants.homeNavigate, (route) => false);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => FooterBar()));
                              } catch(e){
                                if(e is FirebaseAuthException){
                                  showMessage(e.message!);
                                }
                              }
                              setState(() {
                                isLoading = false;
                              });
                              //    try {
                              //      final newUser = await googleSignIn.signIn();
                              //      final googleauth = await newUser!.authentication;
                              //      final creds = GoogleAuthProvider.credential(
                              //          accessToken: googleauth.accessToken,
                              //          idToken: googleauth.idToken
                              //      );
                              //   final a =   await FirebaseAuth.instance.signInWithCredential(creds);
                              //   a.user!.getIdToken().then((token)=>print('check token ${token}'));
                              //   Navigator.push(context, MaterialPageRoute(builder: (context) => FooterBar()));
                              //    } catch (e) {
                              //      print(e);
                              //    }
                              //
                            },
                            child: Text("Login with google"),),

                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "or use your email account",
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'OpenSans',
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                          Form(
                            child: Column(
                              children: [
                                const RoundedInputField(
                                    hintText: "Email", icon: Icons.email),
                                const RoundedPasswordField(),
                                switchListTile(),
                                RoundedButton(text: 'LOGIN', press: () {}),
                                const SizedBox(
                                  height: 10,
                                ),
                                UnderPart(
                                  title: "Don't have an account?",
                                  navigatorText: "Register here",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignUpScreen()));
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
  switchListTile() {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 40),
      child: SwitchListTile(
        dense: true,
        title: const Text(
          'Remember Me',
          style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
        ),
        value: true,
        activeColor: kPrimaryColor,
        onChanged: (val) {},
      ),
    );
  }
  void showMessage(String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text(message),
            actions: [
              TextButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
