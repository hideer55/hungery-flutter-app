import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../sharded/customtext.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  final List<String> category = [
    'All',
    'Combos',
    'Sliders',
    'Classic'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            category.length, (index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 27 , vertical: 15),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: selectedIndex == index ? AppColors.primary : Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Customtext(
                    text: category[index],
                    color: selectedIndex == index ? Colors.white : Colors.black,
                    weight: FontWeight.w500,
                    size: 16),
              ),
            ),
          );
        }),
      ),
    );
  }
}
