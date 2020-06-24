import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fhfhfdhfgdh', style: TextStyle(color: Colors.grey[900]),),
        backgroundColor: Colors.white,
        leading: FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Icon(Icons.keyboard_backspace),
        ),
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
