import 'package:autopay/modules/core/main_navigation.dart';
import 'package:autopay/shared/shared.dart';
import 'package:autopay/widgets/atomics/atomics.dart';
import 'package:autopay/widgets/molecules/input/input_molecules.dart';
import 'package:autopay/widgets/molecules/molecules.dart';
import 'package:flutter/material.dart';
import 'widgets/forgot_password.dart';
import 'widgets/helper.dart';

class LoginPage extends StatelessWidget {
  _navigateToHome(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainNavigation()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AImageBackground(
          image: bgSplashScreen,
          child: _buildBody(context),
        ),
      ),
    );
  }

  _buildBody(context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(logoAutoPay),
            _buildForm(),
            AButtonPrimary(
              label: 'Login',
              onTap: () {
                _navigateToHome(context);
              },
            ),
            ForgotPassword(),
            _buildDivider(),
            AButtonPrimary(label: 'Daftar Sekarang'),
            Helper(),
          ],
        ),
      ),
    );
  }

  _buildForm() {
    return Container(
      margin: EdgeInsets.only(bottom: 36),
      child: Column(
        children: <Widget>[
          OInputPhoneNumber(),
          MInputPassword(
            placeholder: 'Password',
            prefixIcon: Icon(
              Icons.lock,
              color: primaryColor['bluePrimary'],
            ),
          )
        ],
      ),
    );
  }

  _buildDivider() {
    return Container(
      margin: EdgeInsets.only(top: 32, bottom: 15),
      child: MTextDivider(text: 'Tidak punya akun?'),
    );
  }
}
