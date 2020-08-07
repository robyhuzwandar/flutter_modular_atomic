import 'package:flutter/material.dart';

class AImageBackground extends StatelessWidget {
  final String image;
  final Widget child;
  final double width;
  final double height;

  const AImageBackground(
      {Key key, this.image, this.child, this.width, this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
