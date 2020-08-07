import 'package:flutter/material.dart';

class ACircularGradient extends StatelessWidget {
  final Widget child;
  final Color color;

  const ACircularGradient({Key key, this.color, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 49.34,
        height: 49.34,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
              colors: [
                color,
                Colors.white,
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.3, 0.8),
              tileMode: TileMode.clamp),
        ),
        child: child);
  }
}
