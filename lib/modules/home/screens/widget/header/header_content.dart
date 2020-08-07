import 'package:autopay/shared/shared.dart';
import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.only(right: 30, left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogo(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                _buildLabel(),
                _buildSaldo(),
              ],
            )
          ],
        ),
      ),
    );
  }

  _buildLabel() {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Text(
        'Saldo Autopay Kamu',
        style: TextStyle(fontSize: 11, color: Colors.white),
      ),
    );
  }

  _buildLogo() {
    return Image.asset(
      logoAutoPayWhite,
      width: 117,
      height: 90,
    );
  }

  _buildSaldo() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 21),
          child: Icon(Icons.refresh, color: Colors.white, size: 25),
        ),
        Text(
          'Rp 565.900',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
