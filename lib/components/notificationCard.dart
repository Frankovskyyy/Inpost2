import 'package:Inpost2/screens/InfoPage.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => InfoPage())),
        child: Container(
          margin: EdgeInsets.all(10),
          height: 100,
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'fdsafaffaf',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.notifications_none),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'fdsafaffaf',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'więcej',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
