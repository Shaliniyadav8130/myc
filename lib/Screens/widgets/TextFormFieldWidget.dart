import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool obscureText;
  final Icon? prefixIcon; // Add Icon? as a parameter for the prefix icon

  TextFormFieldWidget({
    required this.controller,
    this.hintText,
    this.obscureText = false,
    this.prefixIcon, // Add a parameter for the prefix icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Comforta',
            color: Color(0xff000000),
            fontSize: 15.0,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC5C5C5)),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC5C5C5)),
            borderRadius: BorderRadius.circular(15.0),
          ),
          prefixIcon: prefixIcon, // Use the provided prefix icon here
        ),
      ),
    );
  }
}
