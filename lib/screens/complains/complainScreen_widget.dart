import 'package:flutter/material.dart';
import 'package:avocato/screens/lawyers/card_widget.dart';
import 'package:avocato/screens/complains/ complainCard.dart';

class ComplainScreenDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar:new AppBar(
         centerTitle:true,
         title: Container(child: Text("استشاراتى")),
         ),   
        body: new ListView(
          children: <Widget>[
                 new ComplainCard(title: "صاحب البيت عايز يطردنى من البيت", complain:  "البيت اللى ساكت فيه صاحب البيت عايز يخرجنى بالعافيه و مش عارف اعمل ايه رحت القسم و اشتكيت بس محدش عبرنى و انا قلقان جداا لانه راجل ابن ستين كلب",),
                 new ComplainCard(title: "اتخانقت مع جارتى الكلبه", complain:  "البيت اللى مش عارف اعمل ايه رحت القسم و اشتكيت بس محدش عبرنى و انا قلقان جداا لانه راجل ابن ستين كلب",),
                 new ComplainCard(title: "اخويا عايز يضربنى بالعافيه", complain:  " اللى سً بالعافيه و مش عارف اعمل ايه رحت القسم و اشتكيت بس محدش عبرنى و انا قلقان جداا لانه راجل ابن ستين كلب",),
                  
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: new Icon(Icons.add_comment)
        ),
     );
  }


}