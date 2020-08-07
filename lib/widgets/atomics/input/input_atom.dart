import 'package:flutter/material.dart';

import 'input_styles_atom.dart';

class ATextField extends StatelessWidget {
  final IconData _icon;
  final String _hintText;
  final String _errorText;
  final bool validate;
  final bool obscureText;
  final int _maxLines;
  final TextEditingController _controller;
  final OutlineInputBorder border;

  ATextField(
    this._icon,
    this._hintText,
    this._errorText,
    this._maxLines,
    this._controller, {
    @required this.obscureText,
    @required this.validate,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      maxLines: _maxLines,
      autocorrect: false,
      obscureText: obscureText,
      style: TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 17, top: 35),
          border: border ?? AInputStyles.borderInput,
          prefixIcon: _icon == null ? null : Icon(_icon),
          hintText: _hintText,
          errorText: validate ? _errorText : null,
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 0.1, color: Colors.orange),
          )),
    );
  }
}
