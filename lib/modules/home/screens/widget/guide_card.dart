import 'package:autopay/widgets/atomics/container/box_gradient.dart';
import 'package:flutter/material.dart';

class GuideCard extends StatelessWidget {
  final String text;

  const GuideCard({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 17,
        top: 10,
      ),
      child: ABoxGradient(
        width: 75,
        height: 84,
        color: Color(0xFFE4E7FA),
        child: Text(
          text,
          style: TextStyle(fontSize: 8),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
