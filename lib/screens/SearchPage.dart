import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[900]),
        title: Text(
          "Szukana fraza",
          style: TextStyle(color: Colors.grey[900], fontSize: ScreenUtil().setSp(40, allowFontScalingSelf: true)),
        ),
        backgroundColor: Colors.white,
      ),
      body: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 45.h),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              labelText: 'Wyszukaj...'
            ),
          ),
        ),
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}