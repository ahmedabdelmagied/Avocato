import 'package:flutter/material.dart';
import 'package:avocato/screens/entryScreen/mainScreen/mainScreen.dart';
import 'package:avocato/screens/entryScreen/notificationScreen/notificationScreen.dart';
import 'package:avocato/screens/entryScreen/messageScreen/messageScreen.dart';
import 'package:avocato/main.dart';

class EntryScreenWidget extends StatefulWidget{
  @override
 _EntryScreenWidgetState createState() => new _EntryScreenWidgetState();
}

class _EntryScreenWidgetState extends State<EntryScreenWidget>{
  Widget current = new MainScreen();
  _onTap(int index){
  
    setState(() {
        if(index == 2){
          // current = new NotificationScreen();
          current = MessageScreen();
        //TODO YOU MUST LOGIN IN ORDER TO CONTINUE..
          // Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new MessageScreen()));
        }

        else if(index == 1){
          current = NotificationScreen();
           // current = new MessageScreen();   
           //TODO YOU MUST LOGIN IN ORDER TO CONTINUE..
          //  Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new NotificationScreen()));
         }else{
            current = new MainScreen();

        }
        _currentIndex = index;
              
    });
  }

  int _currentIndex = 3;
  @override
  Widget build(BuildContext context){
    return new Scaffold(
 
      body: current,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){    
           _onTap(index);
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('اعدادات')
          ),
           BottomNavigationBarItem(
           icon: new Icon(Icons.notifications_active),
           title: new Text('الإشعارات'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.message),
            title: new Text('رسايلى'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('الرئيسيه')
          ),
          
          ],
      ),
    );
  }

}