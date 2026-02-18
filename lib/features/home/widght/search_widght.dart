import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidght extends StatelessWidget {
  const SearchWidght({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20,
            offset: Offset(0, 10),
          )
        ]
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Search..',
          hintStyle: TextStyle(color: Color(0xff3C2F2F), fontWeight: FontWeight.w500),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal:  20),
            child: Icon(CupertinoIcons.search, size: 28, weight: 28,),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
        ),
      )
      ),
    );
  }
}
