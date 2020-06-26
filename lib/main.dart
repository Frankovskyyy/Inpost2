import 'package:Inpost2/screens/deliveryPage.dart';
import 'package:Inpost2/screens/notificationPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    DeliveryPage(),           // Tutaj wywoływana jest strona 'śledzenie przesyłki'
    NotificationPage(),       // Tutaj wywoływana jest strona 'Centrum powiadomień'
  ];

  void _onItemTapped(int index) {
    //na p
    setState(() {
      _selectedIndex = index;
    });
  }

//pasek nawigacji, znajdują
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 828, height: 1792, allowFontScaling: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.location_searching),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              title: Text(''),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow[700],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}