// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:loginui/constants/constants.dart';

class Submit extends StatelessWidget {
  final String text;
  final bool isLoading;
  final Function onPressed;

  const Submit({
    super.key,
    required this.text,
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(mainColor),
          fixedSize: WidgetStatePropertyAll(Size(double.infinity, 60)),
          padding: WidgetStatePropertyAll(
            EdgeInsets.all(10),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: !isLoading
            ? Text(
                text,
                style: TextStyle(
                  color: textWhite,
                  fontSize: 25,
                ),
              )
            : CircularProgressIndicator(color: textWhite),
      ),
    );
  }
}
