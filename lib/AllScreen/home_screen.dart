

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siinafbusticketing/widgets/divider.dart';

   class HomeScreen extends StatelessWidget{
     static const String idscreen = "HomeScreen";
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.green[700],
         title: Text("ODA Bus",
           textAlign: TextAlign.center,
           style: TextStyle(
          fontSize: 20,
         ),
         ),
       ),
       body: Container(
         child: Center(
           child: Text("Home Screen"),
         ),
       ),
       drawer: Container(
         color: Colors.green,
         width: 255.0,
         child: Drawer(
           child: ListView(
             children: [
               // add drawer header
               Container(
                 height: 165.0,
                 child: DrawerHeader(
                   decoration: BoxDecoration(color: Colors.green),
                   child: Row(
                     children: [
                       Image.asset("images/buslogo.png", height: 65.0, width: 65.0,),
                       SizedBox(width: 16.0,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Profile Name",
                             style: TextStyle(
                                 fontSize: 16.0,
                                 ),
                           ),
                           SizedBox(height: 6.0,),
                           Text("Visit Profile"),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
               DividerWidget(),
               SizedBox(height: 12.0,),
               // drawer body controllers
               ListTile(
                 leading: Icon(Icons.person),
                 title: Text("Visit Profile", style: TextStyle(fontSize: 15.0),),
               ),
               ListTile(
                 leading: Icon(Icons.history),
                 title: Text("History", style: TextStyle(fontSize: 15.0),),
               ),
               ListTile(
                 leading: Icon(Icons.list),
                 title: Text("Pending Trip", style: TextStyle(fontSize: 15.0),),
               ),
               ListTile(
                 leading: Icon(Icons.add_task_sharp),
                 title: Text("Complete Reservation", style: TextStyle(fontSize: 15.0),),
               ),

               ListTile(
                 leading: Icon(Icons.cancel),
                 title: Text("Cancel Trip", style: TextStyle(fontSize: 15.0),),
               ),
               ListTile(
                 leading: Icon(Icons.info),
                 title: Text("About", style: TextStyle(fontSize: 15.0),),
               ),
             ],
           ),
         ),
       ),
     );
  }

   }