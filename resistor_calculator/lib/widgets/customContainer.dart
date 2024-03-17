import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final double butonlarContainerHeight;
  final double screenWidth;
  final double fontSize;

  CustomContainer(
      {required this.text,
      required this.color,
      required this.butonlarContainerHeight,
      required this.fontSize,
      required this.screenWidth,
      required this.textColor});

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: butonlarContainerHeight / 12,
      width: screenWidth / 5,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.white),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: textColor, fontSize: fontSize),
      ),
    );
  }
}
