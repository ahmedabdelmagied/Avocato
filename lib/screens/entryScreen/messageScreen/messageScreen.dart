import 'package:flutter/material.dart';
import 'package:avocato/screens/entryScreen/messageScreen/messageScreen_Widget.dart';

class MessageScreen extends StatefulWidget{
  @override
  _MessageScreenState createState() => new _MessageScreenState();
}


class _MessageScreenState extends State<MessageScreen>{
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(backgroundColor: Colors.blue,title: Container(
        alignment: Alignment.centerRight,
            child: new Text("رسائلى",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),),
      body: MessageScreenWidget()
    ) ;
  }
}