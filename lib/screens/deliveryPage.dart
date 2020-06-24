import 'package:Inpost2/components/drawer.dart';
import 'package:Inpost2/components/packageCard.dart';
import 'package:flutter/material.dart';
import 'InfoPage.dart';
import 'SearchPage.dart';


class DeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.grey[900]),
        title: Text(
          "Śledzenie przesyłek",
          style: TextStyle(color: Colors.grey[900]),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
            child: Icon(
              Icons.search,
              color: Colors.grey[900],
            ),
          ),
        ],
      ),
      body: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            PackageCard(),
            //Expanded(child: ,)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  color: Colors.white,
                  height: 150,
                  width: 270,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Nie śledzisz jeszcze zadnej przesyłki',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('Kliknij plus by dodać przesyłkę'),
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: ()  => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoPage())),
                  child: Container(
                    color: Colors.yellow[700],
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.add,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
