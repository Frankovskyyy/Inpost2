import 'package:Inpost2/components/drawer.dart';
import 'package:Inpost2/components/notificationCard.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  IconData myIcon = Icons.keyboard_arrow_down;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.grey[900]),
        title: Text(
          "Centrum powiadomień",
          style: TextStyle(color: Colors.grey[900]),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              setState(() {
                if (myIcon == Icons.keyboard_arrow_down) { //Zmienia 
                  myIcon = Icons.keyboard_arrow_up;
                } else {
                  myIcon = Icons.keyboard_arrow_down;
                }
              });
            },
            child: Icon(
              myIcon,
              color: Colors.grey[900],
              size: 35,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: <Widget>[
            NotificationCard(),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(),
          ],
        ),
      ),
    );
  }
}
