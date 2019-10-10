import 'package:flutter/material.dart';


class MainWidget extends StatefulWidget{
  @override
  MainWidgetState createState() => new MainWidgetState();
}

class MainWidgetState extends State<MainWidget>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(

      body: new Container(
        child: new Text("data"),
      ),
    );
  }
}