import 'package:flutter/material.dart';
import 'package:avocato/screens/specialities/specialties_widget.dart';
import 'package:avocato/screens/profile/profile_widget.dart';
import 'package:avocato/screens/mainScreen/mainWidget.dart';

class MainScreen extends StatefulWidget{
  @override
  _MainState createState() => new _MainState();
  
}

class _MainState extends State<MainScreen>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(0.0),
         child: new Container(),
       ),    
        body:new MainWidget()
     );
  }

}