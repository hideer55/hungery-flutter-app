import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  const Customtext({
    super.key,
    required this.text,
    this.color,
    this.weight,
    this.size,
    this.fontfamily,
  });

  final String text;
  final Color? color;
  final FontWeight? weight;
  final double? size;
  final String? fontfamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: weight , fontFamily: fontfamily),
    );
  }
}
