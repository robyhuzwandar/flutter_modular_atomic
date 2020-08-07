import 'dart:async';
import 'package:autopay/modules/login/login_page.dart';
import 'package:autopay/shared/shared.dart';
import 'package:autopay/widgets/atomics/atomics.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = new Timer(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AImageBackground(
        image: bgSplashScreen,
        child: Image.asset(logoAutoPay),
      ),
    );
  }
}
