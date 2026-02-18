import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/sharded/customButtom.dart';
import 'package:hungry/sharded/customtext.dart';

import '../wedghit/Toppings.dart';
import '../wedghit/slider_.dart';

class ProdectDetails extends StatefulWidget {
  const ProdectDetails({super.key});

  @override
  State<ProdectDetails> createState() => _ProdectDetailsState();
}

class _ProdectDetailsState extends State<ProdectDetails> {

  double _slidervalue = 0.5;

  final List<String> toppings = [
    'assets/product_details/tomato.png',
    'assets/product_details/onion.png',
    'assets/product_details/khiar.png',
    'assets/product_details/meat.png',
  ];
  final List<String> toppings_name = [
    'Tomato',
    'onion',
    'Pickles',
    'Bacons',
  ];

  final List<String> Side_options = [
    'assets/product_details/Side_options/banana.png',
    'assets/product_details/Side_options/coolslw.png',
    'assets/product_details/Side_options/khas.png',
    'assets/product_details/Side_options/ring_onion.png',
  ];
  final List<String> Side_options_name = [
    'Fries',
    'Coleslaw',
    'Salad',
    'Onion',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Header
            ProdectDetails_Header(
              slidervalue: _slidervalue,
              onchange: ((v) =>  setState(() => _slidervalue = v))
            ),
            const Gap(50),
            Customtext(
                text: 'Toppings',
                weight: FontWeight.w600,
                size: 18,
            ),
            const Gap(20),
            ///toppings
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(toppings.length, (index){
                  return Padding(
                    padding: const EdgeInsets.only(right:  20),
                    child: Toppings_slider(
                      image: toppings[index],
                      name: toppings_name[index],
                      ontap: () {},
                    ),
                  );
                }),
              ),
            ),

            const Gap(20),

            /// side options
            Customtext(
                text: 'Side_options',
                weight: FontWeight.w600,
                size: 18,
            ),
            const Gap(20),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(toppings.length, (index){
                  return Padding(
                    padding: const EdgeInsets.only(right:  20),
                    child: Toppings_slider(
                      image: Side_options[index],
                      name: Side_options_name[index],
                      ontap: () {},
                    ),
                  );
                }),
              ),
            ),

            const Gap(55),

            ///button
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Customtext(text: 'Total', size: 18, weight: FontWeight.w600,),
                    Row(
                      children: [
                        Customtext(text: '\$' ,color: AppColors.primary, size: 32,weight: FontWeight.w400,),
                        Customtext(text: '18.29', size: 32,weight: FontWeight.w400,),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Custombuttom(
                    text: 'Add To Cart',
                    tcolor: Colors.white,
                    width: 200,
                    height: 70 ,
                    color: AppColors.primary,
                    radius: 20,
                    onTap: (){}
                ),
              ],
            ),

          ],
        ),
      ),



    );
  }
}
