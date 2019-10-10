import 'package:flutter/material.dart';

class MainInfo extends StatelessWidget {
  String telNo , worktelNo , address , about;
  MainInfo({this.telNo, this.worktelNo , this.address , this.about});

  @override
  Widget build(BuildContext context) {
    return  PreferredSize(
           child: ListView(
              children: <Widget>[ 
                   new Container(
                      margin: EdgeInsets.all(10.0),
                      alignment: Alignment.centerRight,
                      child:Column(
                          children: <Widget>[
                          Container(
                             alignment:Alignment.centerRight,
                              child: Text("رقم الهاتف" ,style:new TextStyle(fontSize: 15.0 , color: Colors.grey),textAlign: TextAlign.end,),
                            ),
                          Container(
                             alignment: Alignment.centerRight,
                             child:Text(telNo) ,)            
                                ]
                             )),
 
                             new Container(
                               margin: EdgeInsets.all(10.0),
                               alignment: Alignment.centerRight,
                               child:Column(
                                 children: <Widget>[
                                   Container(
                                     alignment: Alignment.centerRight,
                                      child:Text("رقم العمل" ,style:new TextStyle(fontSize: 15.0 , color: Colors.grey),textAlign: TextAlign.start,),
                                   ),
                                   Container(
                                     alignment: Alignment.centerRight,
                                     child:  Text(worktelNo)
                                   )
                                   
                                  
                                 ]
                             )),

                              new Container(
                               margin: EdgeInsets.all(10.0),
                               alignment: Alignment.centerRight,
                               child:Column(
                                 children: <Widget>[
                                   Container(
                                     alignment: Alignment.centerRight,
                                     child:   Text("عنوان العمل",style:new TextStyle(fontSize: 15.0 , color: Colors.grey),textAlign: TextAlign.start,),
                                   ),
                                   Container(
                                     alignment: Alignment.centerRight,
                                     child:  Text(address,
                                   ))
                                  
                                 ]
                             )),

                                new Container(
                               margin: EdgeInsets.all(10.0),
                               alignment: Alignment.centerRight,
                               child:Column(
                                 children: <Widget>[
                                   Container(
                                     alignment: Alignment.centerRight,
                                     child:   Text( " نبذه مختصره",style:new TextStyle(fontSize: 15.0 , color: Colors.grey),textAlign: TextAlign.start,),
                                   ),
                                   Container(
                                     alignment: Alignment.centerRight,
                                     child:  Text(about),
                                   )
                                  
                                 ]
                             )),
                           ],
                         ),
                          preferredSize: Size.fromHeight(300.0)
                              
    );


  }
}