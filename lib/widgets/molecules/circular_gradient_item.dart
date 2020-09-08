import 'package:autopay/widgets/atomics/container/circular_gradient.dart';
import 'package:flutter/material.dart';

class MCircularGradientItem extends StatelessWidget {
  final String title;
  final String icon;
  final List<Color> gradient;
  final Function onTap;
  final bool labelHorizontal;

  const MCircularGradientItem({
    Key key,
    this.title,
    this.icon,
    this.gradient,
    this.onTap,
    this.labelHorizontal = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: labelHorizontal
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: _buildLayout(),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: _buildLayout(),
            ),
    );
  }

  List<Widget> _buildLayout() {
    return [
      ACircularGradient(
        gradient: gradient,
        child: Image.asset(
          icon,
          width: 25,
          height: 25,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 3, left: labelHorizontal ? 25 : 0),
        child: Text(
          title,
          style: TextStyle(fontSize: labelHorizontal ? 12 : 10),
        ),
      )
    ];
  }
}
