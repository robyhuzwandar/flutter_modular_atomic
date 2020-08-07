import 'package:autopay/widgets/atomics/container/circular_gradient.dart';
import 'package:flutter/material.dart';

class MCircularGradientItem extends StatelessWidget {
  final String title;
  final String icon;
  final Color color;
  final Function onTap;

  const MCircularGradientItem(
      {Key key, this.title, this.icon, this.color, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ACircularGradient(
            color: color,
            child: Image.asset(
              icon,
              width: 32,
              height: 32,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            child: Text(
              title,
              style: TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
