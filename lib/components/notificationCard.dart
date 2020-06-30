import 'package:Inpost2/screens/InfoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 25.h),
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
                            style: GreyStyle.copyWith(
                              fontSize: ScreenUtil()
                                  .setSp(30, allowFontScalingSelf: true),
                            ),
                            textAlign: TextAlign.left),
                      ]),
                  Icon(Icons.notifications_none),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('NADAWCA',
                            style: GreyStyle.copyWith(
                                fontSize: ScreenUtil()
                                    .setSp(30, allowFontScalingSelf: true))),
                        Text('nic.pl - Nowoczesne rozwiązania',
                            style: GreyStyle.copyWith(
                                fontSize: ScreenUtil()
                                    .setSp(30, allowFontScalingSelf: true))),
                      ]),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('śr. | 03.06.20 | 9:39',
                          style: GreyStyle.copyWith(
                              fontSize: ScreenUtil()
                                  .setSp(30, allowFontScalingSelf: true))),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InfoPage()));
                    },
                    child: Row(children: <Widget>[
                      Text(
                        'więcej',
                        style: TextStyle(
                            fontSize: ScreenUtil()
                                .setSp(30, allowFontScalingSelf: true)),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.yellow[700]),
                    ]),
                  )
                ]),
          ]),
    );
  }
}
