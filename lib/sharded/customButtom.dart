import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key, required this.text, required this.width, this.height, required this.onTap, this.color, this.radius, this.tcolor});

  final String text;
  final Color? tcolor;
  final double width;
  final double? height;
  final Color? color;
  final double? radius;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: height ?? 50,
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(radius ?? 15),
          ),
          child: Center(child: Text(text , style: TextStyle(color: tcolor),)),
      ),
    );
  }
}
