import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombutton extends StatelessWidget {
  final double height;
  final double width;
  final Color buttonColor;
  final double buttonRadius;
  final String buttonText;
  final Color textColor;
  final FontWeight textFontWeight;
  final double textSize;
  final VoidCallback onTap;
  const Custombutton({
    super.key,
    this.width = 300,
    this.height = 60,
    this.buttonColor = Colors.white,
    this.buttonRadius = 10,
    required this.buttonText,
    this.textColor = Colors.black45,
    this.textFontWeight = FontWeight.w400,
    this.textSize = 10,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(buttonRadius),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontWeight: textFontWeight,
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
