import 'package:flutter/material.dart';
import 'package:v_leauge/screens/login_screen/compoment/page_title_bar.dart';
import 'package:v_leauge/screens/login_screen/compoment/under_part.dart';
import 'package:v_leauge/screens/login_screen/compoment/upside.dart';

import '../../../constants.dart';
import '../../../widgets/rounded_button.dart';
import '../../../widgets/rounded_icon.dart';
import '../../../widgets/rounded_input_field.dart';
import '../../../widgets/rounded_password_field.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: SizedBox(
          width : size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                   const Upside(
                    imgUrl: "assets/images/login.png",
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
                          iconButton(context),
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
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const LoginForm())
                                );
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
                            const SizedBox(height: 20,)
                          ],
                      ),
                    )

                ],
              ),
            )
    ),
              ],
                ),
    ),
    ),
    ),

    );

  }

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
iconButton(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      RoundedIcon(imageUrl: "assets/images/facebook.png"),

      SizedBox(
        width: 20,
      ),
       RoundedIcon(imageUrl: "assets/images/google.png")
    ],
  );
}
