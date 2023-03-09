import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool secure;
  final Function validator;
  final Widget? prefix;
  final Widget suffixIcon;
  final String? hintText;
  final bool isNumber;
  String? initial;


   TextFormFieldWidget(
      {required this.controller,
      required this.secure,
      Key? key,
      required this.validator,
       this.prefix,
      required this.suffixIcon,
        this.initial,
       this.hintText,this.isNumber=false,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initial,
      controller: controller,
      obscureText: secure,
      cursorColor: Colors.black,
      keyboardType:isNumber==true?TextInputType.phone: TextInputType.text,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        prefixIcon: prefix??null,
        suffixIcon: suffixIcon,

        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
