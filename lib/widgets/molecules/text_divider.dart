import 'package:autopay/shared/shared.dart';
import 'package:flutter/material.dart';

class MTextDivider extends StatelessWidget {
  final String text;

  const MTextDivider({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Divider(thickness: 1.5, color: primaryColor['black'])),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text,
            style: TextStyle(color: primaryColor['black']),
          ),
        ),
        Expanded(child: Divider(thickness: 1.5, color: primaryColor['black']))
      ],
    );
  }
}
