import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_backspace,
            color: Colors.grey[900],
          ),
        ),
        title: Text(
          "Szukana fraza",
          style: TextStyle(color: Colors.grey[900]),
        ),
        backgroundColor: Colors.white,
      ),
      body: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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