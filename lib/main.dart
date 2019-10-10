import 'package:avocato/screens/specialities/specialities.dart';
import 'package:flutter/material.dart';
import 'package:avocato/screens/specialities/specialties_widget.dart';
import 'package:avocato/login_widget.dart';
import 'package:avocato/screens/lawyers/laywers.dart';
import 'package:flutter/services.dart';
import 'package:avocato/screens/profile/profile.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => new _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(0.0),
         child: new Container(),
       ),    
        body: Container(
          height: double.infinity,
          child: //  new Profile()
             LoginScreen1(primaryColor:Colors.red,backgroundColor: Colors.white54,backgroundImage: AssetImage("assets/images/law2.jpg"),logoColor: Colors.white) , //  new ListView(
            ///children: <Widget>[
              // Specialties()
           //   Specialities()
           
              //],
          ),
        
     
     );
  }

}