
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyColumn extends StatelessWidget {
  final String cinsiyet;
  final IconData icon;

  MyColumn({
    this.cinsiyet = 'Defualt',
    this.icon = FontAwesomeIcons.addressCard,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 40.0,
          color: Colors.black54,
        ),
        SizedBox(height: 10.0,),
        Text(
          cinsiyet,
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }
}