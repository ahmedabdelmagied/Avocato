import 'package:flutter/material.dart';
import 'package:avocato/screens/lawyers/laywers.dart';


class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => new _MainScreenState();
}


class _MainScreenState extends State<MainScreen>{
  @override
 
  Widget build(BuildContext context) {
      return new ListView(
      
       children: <Widget>[
          Column(
            children: <Widget>[

             Container(
                      // decoration: BoxDecoration(
                      //   image: new DecorationImage(
                      //     image: this.backgroundImage,
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                      alignment: Alignment.center,
                     // padding: EdgeInsets.only(top: 120.0, bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                      //  mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Container(
                            margin: EdgeInsets.only(top: 10),
                                      height: 80.0,
                                      width: 80.0,
                                      decoration: new BoxDecoration(
                                        
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                          image: new AssetImage("assets/images/bal.jpg")
                                        )
                                      ),
                                    ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          Text(
                            "Avvo",
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Text(
                            "cato",
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          ],
                        ),
                          Container(
                            child:  Text(
                                  "' نخبه من افضل المحامين على مستوى الجمهوريه '",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                          )
                         
                        ],
                      ),
                    ), 
             
                      Container(
                        
                        width: 400.0,             
                          margin: EdgeInsets.only(top:60.0,right: 10.0 , left: 15.0,bottom: 10.0),
                          child: new FlatButton(
                            
                             shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)
                            ),
                            color: Colors.blue,
                              child:new Container(
                                padding: EdgeInsets.all(20.0),
                                child:  new Text(" البحث عن محامى" , style: TextStyle(fontSize: 15.0 ,fontWeight: FontWeight.bold, color: Colors.white),),
                              ),onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => new Lawyers()));
                              },
                          ),
                     
                  ),
                  
                         Container(             
                           width: 400.0,
                          margin: EdgeInsets.only(right: 10.0 , left: 15.0),
                          child: new FlatButton(
                           shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)
                            ),
                            color: Colors.blue,

                              child: new Container(
                                padding: EdgeInsets.all(20.0),
                                child:  Text( " إستشاره قانونيه" , style: TextStyle(fontSize:15.0,fontWeight: FontWeight.bold , color: Colors.white),),
                              ),
                              onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => new Lawyers()));
                              },
                          ),
                      ),
                  
            ],
          )
       ],
    );
  }
}