import 'package:Inpost2/screens/InfoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              height: 100.h,
              width: 200.w,
              child: Image.asset('assets/logo.jpg'),
            ),
          ),
          ListTile(
            title: Text(
              'Archiwum przesyłek',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(30, allowFontScalingSelf: true)),
            ),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => InfoPage())),
          ),
          ListTile(
            title: Text('Mapa punktów InPost',
                style: TextStyle(
                    fontSize:
                        ScreenUtil().setSp(30, allowFontScalingSelf: true))),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => InfoPage())),
          ),
          ListTile(
            title: Text('Ustawienia',
                style: TextStyle(
                    fontSize:
                        ScreenUtil().setSp(30, allowFontScalingSelf: true))),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => InfoPage())),
          ),
          ListTile(
            title: Text('Pomoc',
                style: TextStyle(
                    fontSize:
                        ScreenUtil().setSp(30, allowFontScalingSelf: true))),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => InfoPage())),
          ),
          ListTile(
            title: Text('O aplikacji',
                style: TextStyle(
                    fontSize:
                        ScreenUtil().setSp(30, allowFontScalingSelf: true))),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => InfoPage())),
          ),
        ],
      ),
    );
  }
}
