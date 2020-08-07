import 'package:flutter/material.dart';

class MCircularItem extends StatelessWidget {
  final String icon;
  final String title;

  const MCircularItem({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 49.34,
          height: 49.34,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: Image.asset(
            icon,
            width: 32,
            height: 32,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
            title,
            style: TextStyle(fontSize: 10),
          ),
        )
      ],
    );
  }
}
