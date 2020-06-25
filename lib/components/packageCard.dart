import 'package:Inpost2/constants.dart';
import 'package:Inpost2/screens/detailsPage.dart';
import 'package:flutter/material.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(20),
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
                            style: GreyStyle, textAlign: TextAlign.left),
                        Text('6547360387456803476863', style: BlackBoldStyle),
                      ]),
                  Icon(Icons.blur_linear),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('STATUS', style: GreyStyle),
                        Text('Gotowa do odbioru', style: BlackBoldStyle),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('CZEKA NA ODBIÓR DO', style: GreyStyle),
                        Text('śr. | 03.06.20 | 9:39'),
                      ])
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('NAZWA PRZESYŁKI', style: GreyStyle),
                      Text('Parasole', style: BlackBoldStyle),
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
                      Text('więcej'),
                      Icon(Icons.arrow_forward, color: Colors.yellow[700]),
                    ]),
                  )
                ]),
          ]),
    );
  }
}
