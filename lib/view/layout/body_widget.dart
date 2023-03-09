import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview/string.dart';
import 'package:interview/view/layout/buttom_widget.dart';
import 'package:interview/view/layout/text_utiles.dart';

class BodyWidget extends StatelessWidget {
   BodyWidget({required this.widget,Key? key}) : super(key: key);
  Widget widget;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: HexColor("#1A1A1A"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            height: mq.height * 0.85,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            //column in bottom sheet
            child: widget,
          ),
        ],
      ),
    );
  }
}
