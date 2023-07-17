import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.hintText,
      this.inputType,
      this.onChanged,
      this.obscureText = false});

  Function(String)? onChanged;
  String? hintText;
  TextInputType? inputType;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
