import 'package:autopay/widgets/organisms/header_service.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OHeader(title: 'TOP UP'),
        ],
      ),
    );
  }
}
