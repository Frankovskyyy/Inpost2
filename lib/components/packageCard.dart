import 'package:Inpost2/constants.dart';
import 'package:Inpost2/screens/detailsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.all(40.h),
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
                        Text('NR PRZESYŁKI',
                            style: GreyStyle.copyWith(fontSize: ScreenUtil().setSp(27, allowFontScalingSelf: true)), textAlign: TextAlign.left),
                        Text('6547360387456803476863', style: BlackBoldStyle.copyWith(fontSize: ScreenUtil().setSp(27, allowFontScalingSelf: true))),
                      ]),
                  Icon(Icons.blur_linear),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('STATUS', style: GreyStyle.copyWith(fontSize: ScreenUtil().setSp(27, allowFontScalingSelf: true))),
                        Text('Gotowa do odbioru', style: BlackBoldStyle.copyWith(fontSize: ScreenUtil().setSp(27, allowFontScalingSelf: true))),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('CZEKA NA ODBIÓR DO', style: GreyStyle.copyWith(fontSize: ScreenUtil().setSp(27, allowFontScalingSelf: true))),
                        Text('śr. | 03.06.20 | 9:39', style: TextStyle(fontSize: ScreenUtil().setSp(27, allowFontScalingSelf: true)),),
                      ])
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('NAZWA PRZESYŁKI', style: GreyStyle.copyWith(fontSize: ScreenUtil().setSp(27, allowFontScalingSelf: true))),
                      Text('Parasole', style: BlackBoldStyle.copyWith(fontSize: ScreenUtil().setSp(27, allowFontScalingSelf: true))),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage()));
                    },
                    child: Row(children: <Widget>[
                      Text('więcej', style: TextStyle(fontSize: ScreenUtil().setSp(27, allowFontScalingSelf: true)),),
                      Icon(Icons.arrow_forward, color: Colors.yellow[700]),
                    ]),
                  )
                ]),
          ]),
    );
  }
}
