import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:avocato/screens/profile/profile.dart';

class MessageCardView extends StatelessWidget{
  AssetImage image;
  String message , name;
  bool read = false;

  MessageCardView({this.image ,this.name, this.read,this.message});

  @override
  Widget build(BuildContext context){
       return InkWell(
         onTap: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => new Profile()));},
         child: Card(
                     color: read == false?Colors.grey[300]:Colors.white,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Column(
                     children: <Widget>[
                       Container(
                         //color: read == false?Colors.grey[300]:Colors.white,
                          alignment: Alignment.centerRight,
                          child: new SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                                    
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                            
                                  children: <Widget>[
                                 
                                      
                                        new Container(
                                                child: new Text(name , style: TextStyle(fontSize: 12.0 ,fontWeight: FontWeight.bold, color: Colors.black87),textDirection: TextDirection.rtl,),
                                        ),
                                        
                                      
                                       
                                        new Container(
                                          child: new Text(message.length > 25? message.substring(0,25)+".." : message, style:TextStyle(fontSize: 14.0 , color: Colors.grey ), textDirection:TextDirection.rtl),
                                        ),
                                         new Container(     
                                          child: Text("منذ 5 ساعات" ,style: TextStyle(fontSize: 9.0), textAlign: TextAlign.left,),
                                        ),
                                      
                                          ],
                                      ),               
                                        ],
                                      ),


                                       Column(                                       
                                        children: <Widget>[
                                            new Container(
                                                margin: EdgeInsets.all(12.0),              
                                                height: 35.0,
                                                width: 35.0,
                                                decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image:image
                                                          ),
                                                         borderRadius: BorderRadius.all(Radius.circular(80.0)),                                                                                  
                                                      ),
                                                ),
                                                                        
                                        ],
                                      ),
                                    ],
                                  ),
                                  ),
   
                                   ),  
                               ]),
                  ),
       ); 
  }
}