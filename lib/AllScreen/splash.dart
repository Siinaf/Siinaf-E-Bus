

import 'package:flutter/material.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();

}
class InitState extends State<Splash>{
  @override
   Widget build(BuildContext context) {
     return initWidget();
  }
  Widget initWidget(){
    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),

          ),
          Center(
            child: Container(
              child: Image.asset("images/buslogo.png"),
            ),
          ),
        ],
      ),

    );
  }
  }



