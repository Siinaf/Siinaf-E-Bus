
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siinafbusticketing/AllScreen/home_screen.dart';
import 'package:siinafbusticketing/AllScreen/signin.dart';

import '../main.dart';


class Signup extends StatelessWidget {

  static const String idscreen = "signup";
  TextEditingController emailTextEditController = TextEditingController();
  TextEditingController passwordTextEditController = TextEditingController();
  TextEditingController firstNameTextEditController = TextEditingController();
  TextEditingController lastNameTextEditController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff243665),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 100.0,),
              /*Image(
                image: AssetImage("images/buslogo.png"),
                width: 350.0,
                height: 350.0,
                alignment: Alignment.center,
              ),
              SizedBox(height: 1.0,),
              */
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 22.0,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      controller: firstNameTextEditController,
                      keyboardType:TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "First Name",
                        labelStyle: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    SizedBox(height: 10.0,),
                    TextField(
                      controller: lastNameTextEditController,
                      keyboardType:TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        labelStyle: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    SizedBox(height: 10.0,),
                    TextField(
                      controller: phoneTextEditingController,
                      keyboardType:TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone no.",
                        labelStyle: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    SizedBox(height: 10.0,),
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
                    SizedBox(height: 10.0,),
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
                              "Sign Up",
                              style: TextStyle(fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(24.0),
                        ),
                        onPressed: (){
                          if(firstNameTextEditController.text.isEmpty)
                          {
                            displaytoastmessage("First Name is empty", context);
                          }
                          else if(lastNameTextEditController.text.isEmpty)
                          {
                            displaytoastmessage("LastName is empty", context);
                          }
                         else if(!emailTextEditController.text.contains("@"))
                          {
                            displaytoastmessage("Email address is not valid", context);
                          }
                          else if(passwordTextEditController.text.isEmpty)
                          {
                            displaytoastmessage("Password is empty", context);
                          }
                          else if(phoneTextEditingController.text.isEmpty)
                          {
                            displaytoastmessage("Phone number is empty", context);
                          }
                          else
                          {
                             // complete registration function
                          }

                        }
                    )
                  ],
                ),

              ),
              FlatButton(
                onPressed: (){
                   Navigator.pushNamedAndRemoveUntil(context, Signin.idscreen, (route) => false);
                },
                child: Text("Already Have Accont ? SignIn",
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
