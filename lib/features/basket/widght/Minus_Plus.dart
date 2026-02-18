import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';

class MinusPlus extends StatelessWidget {
  const MinusPlus({
    super.key,
    required this.icon,
    required this.ontap,
  });

  final IconData icon;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
          onTap: ontap,
          child: Icon(icon , color: Colors.white,)),
    );
  }
}
