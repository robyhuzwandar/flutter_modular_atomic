import 'package:flutter/material.dart';

class ABoxGradient extends StatelessWidget {
  final Widget child;
  final Color color;
  final double width;
  final double height;

  const ABoxGradient({Key key, this.color, this.child, this.width, this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
            colors: [
              color,
              Colors.white,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.3, 0.8),
            tileMode: TileMode.clamp),
      ),
      child: child,
    );
  }
}
