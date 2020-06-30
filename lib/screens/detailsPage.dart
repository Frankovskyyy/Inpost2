import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.delete_outline, color: Colors.grey[900]),
              onPressed: () {})
        ],
        iconTheme: IconThemeData(color: Colors.grey[900]),
        backgroundColor: Colors.white,
        title: Text('Szczegóły przesyłki',
            style: TextStyle(
                color: Colors.grey[900],
                fontSize: ScreenUtil().setSp(40, allowFontScalingSelf: true))),
      ),
      body: ListView(
        children: <Widget>[
          DetailsCard(
              color: Colors.white,
              buttonText: 'Udostępnij przeysyłkę do obserwowania'),
          DetailsCard(
              color: Colors.grey[300],
              buttonText: 'Włącz radar by nie ominąć przesyłki'),
          DetailsCard(
              color: Colors.white,
              buttonText: 'Udostępnij przeysyłkę do obserwowania'),
        ],
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final color;
  final buttonText;
  DetailsCard({@required this.color, @required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 700.h,
      color: color,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('NR PRZESYŁKI',
                            style: GreyStyle.copyWith(
                                fontSize: ScreenUtil()
                                    .setSp(27, allowFontScalingSelf: true)),
                            textAlign: TextAlign.left),
                        Text('76574775476475674567564754',
                            style: BlackBoldStyle.copyWith(
                                fontSize: ScreenUtil()
                                    .setSp(27, allowFontScalingSelf: true))),
                      ]),
                  Icon(Icons.blur_linear),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('STATUS',
                            style: GreyStyle.copyWith(
                                fontSize: ScreenUtil()
                                    .setSp(27, allowFontScalingSelf: true))),
                        Text('W trakcie przygotowania',
                            style: BlackBoldStyle.copyWith(
                                fontSize: ScreenUtil()
                                    .setSp(27, allowFontScalingSelf: true))),
                      ]),
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
                                  .setSp(27, allowFontScalingSelf: true))),
                      Text('Jan Kowalski',
                          style: BlackBoldStyle.copyWith(
                              fontSize: ScreenUtil()
                                  .setSp(27, allowFontScalingSelf: true))),
                    ],
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('NAZWA PRZESYŁKI',
                          style: GreyStyle.copyWith(
                              fontSize: ScreenUtil()
                                  .setSp(27, allowFontScalingSelf: true))),
                      Text('Buty',
                          style: BlackBoldStyle.copyWith(
                              fontSize: ScreenUtil()
                                  .setSp(27, allowFontScalingSelf: true))),
                    ],
                  ),
                ]),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              child: OutlineButton(
                color: Colors.white,
                disabledBorderColor: Colors.yellow[700],
                borderSide: BorderSide(
                    color: Colors.yellow[700],
                    style: BorderStyle.solid,
                    width: 5.w),
                onPressed: null,
                child: Text(
                  buttonText,
                  style: BlackBoldStyle.copyWith(
                      fontSize:
                          ScreenUtil().setSp(27, allowFontScalingSelf: true)),
                ),
              ),
            ),
          ]),
    );
  }
}
