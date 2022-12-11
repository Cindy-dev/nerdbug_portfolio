import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String? hintText;
  final Icon? prefixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const TextForm(
      {Key? key,
      this.prefixIcon,
      required this.controller,
      this.validator,
      this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      cursorColor: Colors.cyan,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: Colors.black26,
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:  const BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 0.0)),
        hintText: hintText,
        hintStyle: const TextStyle(
            color: Colors.black26,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            fontSize: 16),
      ),
    );
  }
}
