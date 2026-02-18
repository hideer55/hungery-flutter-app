import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../sharded/customtext.dart';

class ProdectDetails_Header extends StatefulWidget {
  const ProdectDetails_Header({super.key, required this.slidervalue, required this.onchange});

  final double slidervalue;
  final ValueChanged<double> onchange;


  @override
  State<ProdectDetails_Header> createState() => _ProdectDetails_HeaderState();
}

class _ProdectDetails_HeaderState extends State<ProdectDetails_Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('assets/product_details/open_burger.png',width: 180,),
            const Spacer(),
            Column(
              children: [
                Customtext(
                  text: 'Customize Your Burger\n to Your Tastes. Ultimate\n Experience',
                  weight: FontWeight.w500,
                  size: 16,
                ),
                const Gap(20),
                Customtext(text: 'Spicy',),
                Slider(
                  divisions: 2,
                  value: widget.slidervalue,
                  onChanged: widget.onchange,
                  activeColor: AppColors.primary,
                  inactiveColor: Color(0xff7d7d7d47),

                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Customtext(text: '🥶'),
                    const Gap(100),
                    Customtext(text: '🌶️'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
