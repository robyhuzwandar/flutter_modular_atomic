import 'package:flutter/material.dart';

class QrcodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('QR CODE')),
        body: SafeArea(child: Text('Qrcode Page')));
  }
}
