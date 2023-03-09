
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview/view/layout/text_utiles.dart';

Widget cardWidget(mq){
  return Container(
    margin:const  EdgeInsets.symmetric(vertical: 10),
    width: mq.width * 0.8,
    height: mq.height * 0.08,
    decoration: BoxDecoration(
        color: HexColor("#F4F4F4"), borderRadius: BorderRadius.circular(11)),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(
            Icons.file_copy_outlined, size: 30, color: HexColor("##FE7D55"),),
        ),
        const TextUtils(text: '7E0918FF',color: Colors.black,fontSize: 14,)
      ],
    ),
  );
}