import 'package:flutter/material.dart';

class ACircularGradient extends StatelessWidget {
  final Widget child;
  final List<Color> gradient;

  const ACircularGradient({Key key, this.gradient, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 49.34,
        height: 49.34,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, -4.0),
              end: Alignment(1.0, 4.0),
              colors: gradient,
              stops: [0.0, 0.55],
            ),
            borderRadius: BorderRadius.circular(50)),
        child: child);
  }
}
