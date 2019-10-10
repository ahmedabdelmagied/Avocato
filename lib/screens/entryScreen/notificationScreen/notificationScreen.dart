import 'package:flutter/material.dart';
import 'package:avocato/screens/entryScreen/notificationScreen/notificationScreen_widget.dart';



class NotificationScreen extends StatefulWidget{
  @override
  _NotificationScreenState createState() => new _NotificationScreenState();
}


class _NotificationScreenState extends State<NotificationScreen>{
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title:new Container(
        alignment: Alignment.centerRight,
        child: Text("إشعاراتى",style:TextStyle(fontWeight:FontWeight.bold)),
      ),),
      body: new  NotificationScreenWidget()
    ) ;
  }
}