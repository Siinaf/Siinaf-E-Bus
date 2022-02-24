

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siinafbusticketing/AllScreen/profile.dart';
import 'package:siinafbusticketing/AllScreen/signin.dart';
import 'package:siinafbusticketing/widgets/divider.dart';

   class HomeScreen extends StatelessWidget{
     static const String idscreen = "HomeScreen";
     TextEditingController addressTextEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.green,
         title: Text("ODA Bus",
           textAlign: TextAlign.center,
           style: TextStyle(
          fontSize: 20,
         ),
         ),
       ),
       body: Stack(
         children: [
           Positioned(
             left: 0.0,
             right: 0.0,
             bottom: 0.0,
             child: Container(
               height: 250.0,
               decoration: BoxDecoration(
                 color: Colors.green,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black,
                     blurRadius: 16.0,
                     spreadRadius: 0.5,
                     offset: Offset(0.7, 0.7),
                   ),
                 ],
               ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 6.0),
                     Text("Hi there,", style: TextStyle(fontSize: 12.0),),
                     Text("Set Your Initial And Drop off City", style: TextStyle(fontSize: 20.0,),),
                     SizedBox(height: 50.0),
                     GestureDetector(
                       onTap: ()
                       {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen()));
                       },
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5.0),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black54,
                               blurRadius: 6.0,
                               spreadRadius: 0.5,
                               offset: Offset(0.7, 0.7),
                             ),
                           ],
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(12.0),
                           child: Row(
                             children: [
                               Icon(Icons.search, color: Colors.blueAccent),
                               SizedBox(width: 10.0,),
                               Text("Search Initial City")
                             ],
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height: 24.0),
                     GestureDetector(
                       onTap: ()
                       {
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen()));
                       },
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5.0),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black54,
                               blurRadius: 6.0,
                               spreadRadius: 0.5,
                               offset: Offset(0.7, 0.7),
                             ),
                           ],
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(12.0),
                           child: Row(
                             children: [
                               Icon(Icons.search, color: Colors.blueAccent),
                               SizedBox(width: 10.0,),
                               Text("Search Drop off City")
                             ],
                           ),
                         ),
                       ),
                     ),
                     DividerWidget(),
                   ],
                 ),
               ),
             ),
           ),
         ],
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
                               color: Colors.white,
                                 ),
                           ),
                           SizedBox(height: 6.0,),
                           Text("Phone Number",
                           style: TextStyle(
                             fontSize: 12.0,
                             color: Colors.white,
                           ),),
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
                 title: Text("Profile", style: TextStyle(fontSize: 15.0),
                 ),
                 onTap: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => ProfilePage(),
                     ),
                   );
                 },
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
                 leading: Icon(Icons.language),
                 title: Text("Language", style: TextStyle(fontSize: 15.0),),
               ),
               ListTile(
                 leading: Icon(Icons.notifications),
                 title: Text("Notifications", style: TextStyle(fontSize: 15.0),
                 ),
               ),
               ListTile(
                 leading: Icon(Icons.info),
                 title: Text("About US", style: TextStyle(fontSize: 15.0),),
               ),
               ListTile(
                 leading: Icon(Icons.contact_page),
                 title: Text("Contact Us", style: TextStyle(fontSize: 15.0),),
               ),
               ListTile(
                 leading: Icon(Icons.logout),
                 title: Text("Logout", style: TextStyle(fontSize: 15.0),
                 ),
                 onTap: (){
                    showDialog(context: context, barrierDismissible: true, builder: (param){
                     return AlertDialog(
                       actions: <Widget>[
                         FlatButton(
                             color: Colors.green,
                             onPressed: () => Navigator.pop(context),
                             child: Text("Cancel")),
                         FlatButton(
                             color: Colors.red,
                             onPressed: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context) => Signin(),
                                 ),
                               );
                             },
                             child: Text("Logout")),
                       ],
                       title: Text('Are you sure do you want to Logout ?'),
                     );
                   });
                 },
               ),
             ],
           ),
         ),
       ),
     );
  }

   }