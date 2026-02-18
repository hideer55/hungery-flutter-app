import 'package:flutter/material.dart';
import '../../../sharded/customtext.dart';

class Toppings_slider extends StatefulWidget {
  const Toppings_slider({super.key, required this.image, required this.name, required this.ontap});

  final String image;
  final String name;
  final Function() ontap;

  @override
  State<Toppings_slider> createState() => _Toppings_sliderState();
}

class _Toppings_sliderState extends State<Toppings_slider> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 84,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff3C2F2F),
            boxShadow: [
              BoxShadow(color: Colors.black , blurRadius: 5)
            ],
          ),
        ),
        Container(
          width: 84,
          height: 61,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Image.asset(widget.image , fit: BoxFit.contain,),
        ),
        Positioned(
          left: 6,
          top: 70,
          child: Customtext(
            text: widget.name,
            color: Colors.white,
            weight: FontWeight.w500,
            size: 12,
          ),
        ),
        Positioned(
          left: 55,
          top: 68,
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffEF2A39),
            child: GestureDetector(
                onTap: widget.ontap,
                child: Icon(Icons.add , color: Colors.white,)),
          ),
        ),
      ],
    );
  }
}
