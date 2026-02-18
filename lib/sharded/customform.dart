import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customform extends StatefulWidget {
  const Customform({super.key, required this.text, required this.ispass, required this.controller, this.nextFocusNode, this.focusNode, this.type});

  final String text;
  final TextEditingController controller;
  final bool ispass;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputType? type;

  @override
  State<Customform> createState() => _CustomformState();
}

class _CustomformState extends State<Customform> {
  late bool hidepass;

  @override
  void initState() {
    hidepass = widget.ispass;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.type,
      focusNode: widget.focusNode,
      textInputAction:
      widget.nextFocusNode != null ? TextInputAction.next : TextInputAction.done,
      onFieldSubmitted: (_) {
        if (widget.nextFocusNode != null) {
          FocusScope.of(context).requestFocus(widget.nextFocusNode);
        } else {
          FocusScope.of(context).unfocus();
        }
      },
      controller: widget.controller,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      obscureText: hidepass,
      decoration: InputDecoration(
        suffixIcon: widget.ispass ? GestureDetector(
            onTap: () => setState(() => hidepass = !hidepass),
            child: Icon(CupertinoIcons.eye, color: Colors.white)) : SizedBox.shrink(),
        labelText: widget.text,
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
