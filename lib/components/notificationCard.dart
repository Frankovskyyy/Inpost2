import 'package:Inpost2/screens/InfoPage.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Paczka została umieszczona w Paczkomacie',
                            style: GreyStyle.copyWith(fontSize: 15), textAlign: TextAlign.left),
                      ]),
                  Icon(Icons.notifications_none),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('NADAWCA', style: GreyStyle),
                        Text('Omna.pl - Smart Technology and Smart Life', style: GreyStyle),
                      ]),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('śr. | 03.06.20 | 9:39', style: GreyStyle),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InfoPage()));
                    },
                    child: Row(children: <Widget>[
                      Text('więcej'),
                      Icon(Icons.arrow_forward, color: Colors.yellow[700]),
                    ]),
                  )
                ]),
          ]),
    );
  }
}
