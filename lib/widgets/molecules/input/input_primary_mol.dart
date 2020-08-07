import 'package:autopay/widgets/atomics/input/input.dart';
import 'package:flutter/material.dart';

class MInputPrimary extends StatefulWidget {
  final String placeholder;
  final dynamic validate;
  final dynamic onSaved;
  final TextEditingController controller;
  final Widget prefixIcon;

  MInputPrimary({
    this.placeholder,
    this.validate,
    this.onSaved,
    this.controller,
    this.prefixIcon,
  });

  @override
  _MInputPrimaryState createState() => _MInputPrimaryState();
}

class _MInputPrimaryState extends State<MInputPrimary> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        validator: widget.validate,
        onSaved: widget.onSaved,
        controller: widget.controller,
        autofocus: false,
        obscureText: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: widget.placeholder,
          border: AInputStyles.borderInput,
          prefixIcon: widget.prefixIcon,
          hintStyle: TextStyle(fontSize: 14),
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
