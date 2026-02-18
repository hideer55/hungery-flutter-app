import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../sharded/customtext.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.img, required this.title, required this.subtitle, required this.rating});

  final String img;
  final String title;
  final String subtitle;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(img , width: 180, fit: BoxFit.fill,),
            const Gap(10),
            Customtext(text: title),
            Customtext(text: subtitle),
            Customtext(text: rating),
          ],
        ),
      ),
    );
  }
}

// 'assets/test/image 6.png'
// 'Cheeseburger'
// "Wendy's Burger"
// "⭐ 4.9"
