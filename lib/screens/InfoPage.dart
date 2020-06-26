import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fhfhfdhfgdh', style: TextStyle(color: Colors.grey[900], fontSize: ScreenUtil().setSp(40, allowFontScalingSelf: true))),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey[900]),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Text('fsdfasfasfdasdfsaafsfafsadffdasddddfasdfsafsdfsdfadsfsdfsdfaf'),
            Text('fsdfasfasfdasdfsaafsfafsadffdasddddfasdfsafsdfsdfadsfsdfsdfaf'),
            Text('fsdfasfasfdasdfsaafsfafsadffdasddddfasdfsafsdfsdfadsfsdfsdfaf'),
            Text('fsdfasfasfdasdfsaafsfafsadffdasddddfasdfsafsdfsdfadsfsdfsdfaf'),
            Text('fsdfasfasfdasdfsaafsfafsadffdasddddfasdfsafsdfsdfadsfsdfsdfaf'),
            Text('fsdfasfasfdasdfsaafsfafsadffdasddddfasdfsafsdfsdfadsfsdfsdfaf'),
            Text('fsdfasfasfdasdfsaafsfafsadffdasddddfasdfsafsdfsdfadsfsdfsdfaf'),
          ],
        ),
      ),
    );
  }
}
