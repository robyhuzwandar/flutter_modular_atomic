import 'package:flutter/material.dart';

class ACardPrimary extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final EdgeInsets padding;
  final Widget child;
  final List<BoxShadow> shadow;
  final bool withShadow;
  final Color color;
  ACardPrimary({
    this.height,
    this.width,
    @required this.child,
    this.radius = 5,
    this.padding = EdgeInsets.zero,
    this.color = Colors.white,
    this.shadow,
    this.withShadow = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: shadow ??
            [
              BoxShadow(
                color: withShadow ? Colors.grey : Colors.transparent,
                spreadRadius: -2,
                blurRadius: 3,
                offset: Offset(0, 2),
              )
            ],
      ),
      child: child,
    );
  }
}
