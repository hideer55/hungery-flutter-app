import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../sharded/customtext.dart';
import 'Minus_Plus.dart';
class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  int count = 1;

  void m_botton(){
    setState(() {
      if (count > 1) {
        count--;
      }
    });
  }

  void p_botton(){
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/basket/burger.png', width: 100,),
                Customtext(text: 'Hamburger' , size: 16, weight: FontWeight.w600,),
                Customtext(text: 'Veggie Burger', size: 14, weight: FontWeight.w400),
              ],
            ),

            const Spacer(),

            Column(
              children: [
                SizedBox(
                  width: 153,
                  child: Row(
                    children: [
                      MinusPlus(icon: CupertinoIcons.minus, ontap: () { m_botton(); },),
                      Expanded(child: Center(child: Customtext(text: count.toString(), size: 20,))),
                      MinusPlus(icon: CupertinoIcons.plus, ontap: () { p_botton(); },),

                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
