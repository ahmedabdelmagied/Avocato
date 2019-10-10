import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:avocato/screens/profile/profile.dart';

class NotificationCardWidget extends StatelessWidget{
  AssetImage image;
  String position , name;
  double ratingValue;
  int noOfPeople;
  
  NotificationCardWidget({this.image ,this.name, this.position , this.ratingValue , this.noOfPeople});

  @override
  Widget build(BuildContext context){
       return InkWell(
         onTap: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => new Profile()));},
         child: Card(
           
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Column(
                     children: <Widget>[
                       Container(
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
                                                
                                          child: new Text(name , style: TextStyle(fontWeight:FontWeight.bold,fontSize: 12.0 , color: Colors.black87),textDirection: TextDirection.rtl,),
                                        ),
                                           SizedBox(width: 10.0,),
                                          new Container(
                                          child: Text("قام بالرد على إستشاره لك"),
                                        ),
                                       
                                      
                                          ],
                                      ),               
                                        ],
                                      ),


                                       Column(                                       
                                        children: <Widget>[
                                            new Container(
                                                margin: EdgeInsets.all(12.0),              
                                                height: 30.0,
                                                width: 30.0,
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