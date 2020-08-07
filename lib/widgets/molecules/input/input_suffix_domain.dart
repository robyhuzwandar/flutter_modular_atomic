import 'package:autopay/shared/shared.dart';
import 'package:flutter/material.dart';
import 'input_primary_mol.dart';

class OInputPhoneNumber extends StatelessWidget {
  final String suffix;
  final String placeholder;

  const OInputPhoneNumber({Key key, this.suffix, this.placeholder})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        _buildCountryCode(),
        Expanded(
            child: Container(
          margin: EdgeInsets.only(left: 10),
          child: MInputPrimary(
            placeholder: 'Masukkan Nomor Hp',
            prefixIcon: Icon(
              Icons.phone_android,
              color: primaryColor['bluePrimary'],
            ),
          ),
        )),
      ],
    ));
  }

  _buildCountryCode() {
    return Container(
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 12),
            child: Image.asset(
              iconFlagId,
              height: 20,
            ),
          ),
          Text('+62')
        ],
      ),
    );
  }
}
