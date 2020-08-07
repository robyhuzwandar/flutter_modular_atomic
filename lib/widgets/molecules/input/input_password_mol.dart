import 'package:autopay/widgets/atomics/input/input.dart';
import 'package:flutter/material.dart';

class MInputPassword extends StatefulWidget {
  final String placeholder;
  final dynamic validate;
  final dynamic onSaved;
  final TextEditingController controller;
  final Widget prefixIcon;

  MInputPassword({
    this.placeholder,
    this.validate,
    this.onSaved,
    this.controller,
    this.prefixIcon,
  });

  @override
  _MInputPasswordState createState() => _MInputPasswordState();
}

class _MInputPasswordState extends State<MInputPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        key: Key('password'),
        validator: widget.validate,
        onSaved: widget.onSaved,
        controller: widget.controller,
        autofocus: false,
        obscureText: _obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: widget.placeholder,
          border: AInputStyles.borderInput,
          prefixIcon: widget.prefixIcon,
          suffixIcon: GestureDetector(
            child: _obscureText
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
            onTap: onTap,
          ),
        ),
      ),
    );
  }

  void onTap() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
