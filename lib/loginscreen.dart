import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:loginui/customwidget/customtextfield.dart';
import 'package:loginui/signupscren.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/1.png'), fit: BoxFit.cover),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xff00afb9),
                Color(0xff00afb9).withOpacity(0.5),
              ]),

        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Sign in with your account',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 65,
                ),
                CustomTextField(
                  issecured: false,
                  hint: 'Email/Phone',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hint: '   Password',
                  issecured: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: ButtonTheme(
                      buttonColor: Colors.white,
                      minWidth: MediaQuery.of(context).size.width,
                      height: 55,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Log in',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'OR',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(image: AssetImage('images/fb.png')),
                      SizedBox(
                        width: 20,
                      ),
                      Image(image: AssetImage('images/google.png'))
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't Have an Accout ?",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
