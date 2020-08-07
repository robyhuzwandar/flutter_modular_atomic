import 'package:autopay/shared/shared.dart';
import 'package:flutter/material.dart';

class MTextLeftIcon extends StatelessWidget {
  final Icon icon;
  final String text;

  const MTextLeftIcon({Key key, this.icon, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        Container(
          margin: EdgeInsets.only(left: 16),
          child: Text(
            text,
            style: TextStyle(color: primaryColor['black']),
          ),
        )
      ],
    );
  }
}
