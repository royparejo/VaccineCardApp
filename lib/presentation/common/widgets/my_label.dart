import 'package:flutter/material.dart';

class MyLabel extends StatelessWidget {
  const MyLabel(this.text, {this.size, this.color, this.textAlign, super.key});
  final String text;
  final double? size;
  final Color? color;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
