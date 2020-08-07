import 'package:autopay/widgets/molecules/text_left_icon.dart';
import 'package:flutter/material.dart';

class Helper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 23),
      child: MTextLeftIcon(
        icon: Icon(Icons.live_help),
        text: 'Butuh bantuan ?',
      ),
    );
  }
}
