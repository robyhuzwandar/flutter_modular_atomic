import 'package:autopay/shared/shared.dart';
import 'package:flutter/material.dart';

class AButtonPrimary extends StatelessWidget {
  final String label;
  final Color color;
  final Function onTap;

  const AButtonPrimary({Key key, this.label, this.color, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
          height: 44,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color ?? primaryColor['blue'],
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            '$label',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          )),
    );
  }
}
