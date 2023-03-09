

import 'package:flutter/material.dart';
import 'package:interview/string.dart';
import 'package:interview/view/layout/text_utiles.dart';


class ButtonWidget extends StatelessWidget {
  final String text;

  final Function() onPressed;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: mainColor,
        minimumSize:  Size(mq.width*0.8, mq.height*0.07),
      ),
      child: TextUtils(
          text: text,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.white),
    );
  }
}
