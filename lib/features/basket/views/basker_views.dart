import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/app_colors.dart';
import '../../../sharded/customButtom.dart';
import '../../../sharded/customtext.dart';
import '../widght/cart_item.dart';

class BaskerViews extends StatelessWidget {
  const BaskerViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return CartItem();
          },
        ),
      ),

    );
  }
}
