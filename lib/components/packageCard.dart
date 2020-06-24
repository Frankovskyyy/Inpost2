import 'package:flutter/material.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Expanded(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Row(children: <Widget>[
            Column(children: <Widget>[
              Text('NR PRZESYŁKI'),
              Text('6547360387456803476863'),
            ]),
            Icon(Icons.ac_unit),
          ]),
          Row(children: <Widget>[
            Column(children: <Widget>[
              Text('STATUS'),
              Text('Gotowa do odbioru'),
            ]),
            Column(children: <Widget>[
              Text('STATUS'),
              Text('śr.|03.06.20|9:39'),
            ])
          ]),
          Row(children: <Widget>[
            Column(
              children: <Widget>[
                Text('NAZWA PRZESYŁKI'),
                Text('Parasole'),
              ],
            ),
            Row(children: <Widget>[
              Text('więcej'),
              Icon(Icons.arrow_right),
            ])
          ]),
        ]),
      ),
    );
  }
}
