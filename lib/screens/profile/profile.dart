import 'package:flutter/material.dart';
import 'package:avocato/screens/specialities/specialties_widget.dart';
import 'package:avocato/screens/profile/profile_widget.dart';

class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => new _ProfileState();
  
}

class _ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(0.0),
         child: new Container(),
       ),    
        body:new ProfileWidget()
     );
  }

}