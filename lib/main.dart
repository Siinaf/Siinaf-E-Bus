import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:siinafbusticketing/AllScreen/home_screen.dart';
import 'package:siinafbusticketing/AllScreen/profile.dart';
import 'package:siinafbusticketing/AllScreen/signup.dart';
import 'package:siinafbusticketing/AllScreen/splash.dart';
import 'package:siinafbusticketing/AllScreen/signin.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: HomeScreen.idscreen,
     routes: {
       Signup.idscreen: (context) => Signup(),
       Signin.idscreen: (context) => Signin(),
       HomeScreen.idscreen: (context)=> HomeScreen(),
       ProfilePage.idscreen: (context)=>ProfilePage(),


     },

   );
  }

}
displaytoastmessage(String message, BuildContext context){
  Fluttertoast.showToast(msg: message);
}
