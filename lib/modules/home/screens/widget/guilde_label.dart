import 'package:flutter/material.dart';

class GuideLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Seputar Autopay',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  'Cari tau tentang Autopay disini',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
