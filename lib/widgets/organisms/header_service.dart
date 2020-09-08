import 'package:autopay/shared/shared.dart';
import 'package:autopay/widgets/atomics/atomics.dart';
import 'package:flutter/material.dart';

class OHeader extends StatelessWidget {
  final String title;

  const OHeader({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      overflow: Overflow.visible,
      children: [
        _buildBackground(context),
      ],
    );
  }

  _buildBackground(context) {
    return AImageBackground(
      image: bgHeader,
      height: 138,
      child: Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 53, left: 20),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
