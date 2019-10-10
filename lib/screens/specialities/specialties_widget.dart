import 'package:flutter/material.dart';

class Specialties extends StatelessWidget{
  Specialties();
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.only(top: 20.0),
            alignment: Alignment.centerRight,
              child:  new Text("إختر التخصص الذى تريده" , textDirection: TextDirection.rtl,textAlign:TextAlign.right ,style: new TextStyle(fontSize: 25.0 , fontWeight: FontWeight.bold,fontStyle: FontStyle.normal , color: Colors.black87),),    
          ),         
           new Expanded(
              child: GridView.count(
              crossAxisCount:2,
                children: <Widget>[
                    cardView("عقارات" , new ExactAssetImage("assets/images/law2.jpg")),
                    cardView("ميراث", new ExactAssetImage("assets/images/law3.jpg")),
                    cardView("جنايات", new ExactAssetImage("assets/images/law.jpg")),
                    cardView("زواج و طلاق", new ExactAssetImage("assets/images/law2.jpg")),
                    cardView("حضانه و استشارات اسريه", new ExactAssetImage("assets/images/law3.jpg")),
                    cardView("شركات", new ExactAssetImage("assets/images/law.jpg")),
                    cardView("دفاع", new ExactAssetImage("assets/images/law2.jpg")),
                    cardView("شرعى", new ExactAssetImage("assets/images/law3.jpg")),
                    cardView("قضايا عماليه", new ExactAssetImage("assets/images/law2.jpg")),
                    cardView("قضايا بنوك", new ExactAssetImage("assets/images/law3.jpg"))
                ],
             ) ,
           ),
        ],
    );
  }

}


Widget cardView(String specializeName , ExactAssetImage myimage){
   return new Card(
        child: Stack(
          children: <Widget>[
            Container(
            margin: EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: myimage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            Container(
              margin: EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  color: Colors.black38
                ),
              ),
              
              Center(
                 child: Text(specializeName , style: TextStyle(fontSize: 25.0 , fontWeight: FontWeight.bold , color: Colors.white),),
              ),
          ],
      ),
     );
}
