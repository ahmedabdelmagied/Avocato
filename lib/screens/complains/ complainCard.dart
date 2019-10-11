import 'package:flutter/material.dart';

class ComplainCard extends StatelessWidget {
  String title;
  String complain;

  ComplainCard({this.title , this.complain});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
              children: <Widget>[
               Container(
                 padding: EdgeInsets.only(top:10.0,bottom: 0.0,right: 10.0),
                 alignment: Alignment.centerRight,
                 child: Text(title, style: TextStyle(fontSize: 25.0 ,fontWeight: FontWeight.bold, color: Colors.blue),textDirection: TextDirection.rtl,),
               ),
               Container(
                 padding: EdgeInsets.all(10.0),
                 alignment: Alignment.centerRight,
                 child:  Text(
                        complain,
                      style:TextStyle(fontSize: 16.0), 
                      textDirection: TextDirection.rtl,
                    
                    ),
               ),
               Row(
                 
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                    Expanded(
                      flex: 1,
                      child:Container(
                        margin: EdgeInsets.only(left: 12.0),
                      
                        alignment: Alignment.centerLeft,
                          child: Text("لم يتم الرد بعد" , style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                        ),),
                        Expanded(child:Container(
                          padding: EdgeInsets.only(bottom: 5.0,right: 10.0),
                          alignment:Alignment.centerRight,
                          child:  new FlatButton(
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(30.0)
                                      ),
                                      color: Colors.red,
                                        child: new Text("اقرأ التفاصيل" , style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold , color: Colors.white)),
                                        onPressed: (){},
                                    ),
                        ),)
                       
                 ],
               )
               
               
              ],
      ),
    );
  }
}