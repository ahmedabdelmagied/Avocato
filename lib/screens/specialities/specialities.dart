import 'package:flutter/material.dart';
import 'package:avocato/screens/specialities/specialties_widget.dart';
import 'package:avocato/login_widget.dart';
import 'package:flutter/services.dart';


class Specialities extends StatefulWidget{
  @override
  _SpecialitiesState createState() => new _SpecialitiesState();
  
}

class _SpecialitiesState extends State<Specialities>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(0.0),
         child: new Container(),
       ),    
        body: Specialties()
     );
  }

}