import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/home/widght/card_item.dart';
import 'package:hungry/sharded/customtext.dart';
import '../../../core/constants/app_colors.dart';
import '../../product_details/views/prodect_details.dart';
import '../widght/category_list.dart';
import '../widght/profile_picture.dart';
import '../widght/search_widght.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(65),

                ///Header
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/logo/Hungry_.svg' , color: AppColors.primary,width: 216,),
                        Customtext(
                          text: 'Hello, Hideer',
                          color: Color(0xff6A6A6A),
                          weight: FontWeight.w500,
                          size: 18,
                          fontfamily: 'Medium',
                        ),
                      ],
                    ),
                    const Spacer(),
                    ProfilePicture(),
                  ],
                ),

                const Gap(20),

                ///search
                SearchWidght(),

                const Gap(25),

                ///category
                CategoryList(),

                const Gap(25),

                ///item
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.71,
                    crossAxisSpacing: 2,

                  ),

                  itemBuilder: (context , index) => GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => ProdectDetails())),
                    child: CardItem(
                        img: 'assets/test/image 6.png',
                        title: 'Cheeseburger',
                        subtitle: "Wendy's Burger",
                        rating: "⭐ 4.9"
                    ),
                  ),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
