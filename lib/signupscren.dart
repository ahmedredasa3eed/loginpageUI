import 'package:flutter/material.dart';
import 'package:loginui/customwidget/customtextfield.dart';
import 'package:loginui/loginscreen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/1.png'), fit: BoxFit.cover),
            gradient: LinearGradient(
                colors: [
                Color(0xff00afb9),
                Color(0xff00afb9).withOpacity(0.5),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 50,),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Create Account',
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
                    'Sign up for new account',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              CustomTextField(
                hint: '    enter your name',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    enter your Email',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    enter your Phone',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    enter your Password',
                issecured: true,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Create',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Have an Accout ?",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      'Login Now',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ),);
  }
}
