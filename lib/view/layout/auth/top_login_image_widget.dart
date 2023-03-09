import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview/view/layout/text_utiles.dart';

Widget topLoginWidet(mq){
  return SizedBox(
    height: mq.height * 0.31,
    child: Stack(
      children: [
        Container(
            alignment: Alignment.topRight,
            child: Image.asset('images/EllipseHalfKit.png')),
        Image.asset('images/EllipseFullKit.png'),
        Container(
            margin: EdgeInsets.only(top: mq.height * 0.05),
            alignment: Alignment.center,
            child: const TextUtils(
              text: 'Login',
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            )),
      ],
    ),
  );
}