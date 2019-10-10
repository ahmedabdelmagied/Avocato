import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class reviewWidget extends StatelessWidget {

  String name , review;
  AssetImage image;
  double ratingValue;

  reviewWidget({this.name , this.review , this.image , this.ratingValue});

  @override
  Widget build(BuildContext context) {
    return  Container(
              alignment: Alignment.centerRight,
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
                                margin: EdgeInsets.all(5.0),            
                                child: new Text(name , style: TextStyle(fontSize: 15.0 , color: Colors.grey),textDirection: TextDirection.rtl,),
                              ),

                              FlutterRatingBar(
                                    initialRating: ratingValue,
                                    itemSize: 15.0,
                                    fillColor: Colors.amber,
                                    borderColor: Colors.amber.withAlpha(50),
                                    allowHalfRating: true,
                                    onRatingUpdate: null,
                                    textDirection: TextDirection.rtl,
                              ),

                            new Container(         
                              width:200.0,
                              margin: EdgeInsets.only(right:5.0),
                              child: new Text(review, maxLines: 5, textDirection: TextDirection.rtl,),
                            )

                          ],
                      ),
                    ],
                  ),


            Column(                                       
              children: <Widget>[

                  new Container(
                                                
                      height: 40.0,
                      width: 40.0,
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
          );
  }
}





