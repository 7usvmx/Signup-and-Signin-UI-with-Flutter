// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:loginui/constants/constants.dart';

class CustomTextForm extends StatelessWidget {
  final String label;
  final bool isPassword;
  final inputType;
  final prefixIcon;
  final IconButton? suffixIcon;
  final  controller;

  const CustomTextForm({
    super.key,
    required this.label,
    required this.isPassword,
    required this.inputType,
    required this.prefixIcon,
    required this.controller,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 28),
      child: TextFormField(
        keyboardType: inputType,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: mainColor),
          ),
        ),
      ),
    );
  }
}
