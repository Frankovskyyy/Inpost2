import 'package:Inpost2/screens/InfoPage.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                height: 50,
                width: 100,
                child: Image.asset('assets/logo.jpg'),
                ),
            ),
            ListTile(
              title: Text('Archiwum przesyłek'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoPage())),
            ),
            ListTile(
              title: Text('Mapa punktów InPost'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoPage())),
            ),
            ListTile(
              title: Text('Ustawienia'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoPage())),
            ),
            ListTile(
              title: Text('Pomoc'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoPage())),
            ),
            ListTile(
              title: Text('O aplikacji'),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoPage())),
            ),
          ],
        ),
      );
  }
}