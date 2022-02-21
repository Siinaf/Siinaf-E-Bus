
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siinafbusticketing/AllScreen/signup.dart';

import '../main.dart';


class Signin extends StatelessWidget {

  static const String idscreen = "login";
  TextEditingController emailTextEditController = TextEditingController();
  TextEditingController passwordTextEditController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff243665),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 350.0,),

              Text(
                "Sign In",
                style: TextStyle(fontSize: 22.0,
                color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      controller: emailTextEditController,
                      keyboardType:TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    TextField(
                      controller: passwordTextEditController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      style: TextStyle(fontSize: 22.0,
                      color: Colors.white,
                      ),

                    ),
                    SizedBox(height: 10.0,),
                    RaisedButton(
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Container(
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(24.0),
                        ),
                        onPressed: (){
                         if(!emailTextEditController.text.contains("@"))
                          {
                            displaytoastmessage("Email address is not valid", context);
                          }
                          else if(passwordTextEditController.text.isEmpty)
                          {
                            displaytoastmessage("Password is empty", context);
                          }
                          else
                          {

                          }

                        }
                    )
                  ],
                ),

              ),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, Signup.idscreen, (route) => false);
                },
                child: Text("Don't have account ? Register here ",
                 style: TextStyle(color: Colors.white,
                 ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
