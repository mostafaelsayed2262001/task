import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview/string.dart';
import 'package:interview/view/layout/body_widget.dart';
import 'package:interview/view/layout/buttom_widget.dart';
import 'package:interview/view/layout/home_widget/card_widget.dart';
import 'package:interview/view/layout/text_utiles.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
        body: BodyWidget(
      widget: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          margin: const EdgeInsets.only(top: 26),
          height: mq.height*0.008,
          width: 70,
          decoration: BoxDecoration(
              color: HexColor('#D9D9D9'),
              borderRadius: BorderRadius.circular(5)),
        ),
        Container(
            alignment: Alignment.topRight,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              icon: Image.asset('images/icon/backIcon.png'),
              onPressed: () {},
            )),
        SizedBox(
          height: mq.height * 0.06,
        ),
        const TextUtils(
          text: 'Scan OR code',
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(
          height: mq.height * 0.035,
        ),
        TextUtils(
          text: 'Proreader will Keep your last 10 days history',
          color: kColor,
          fontSize: 12,
        ),
        const SizedBox(
          height: 5,
        ),
        TextUtils(
          text: 'to keep your all scared history please ',
          color: HexColor("##B9B9B9"),
          fontSize: 12,
        ),
        const SizedBox(
          height: 5,
        ),
        TextUtils(
          text: 'purched our pro package',
          color: HexColor("##B9B9B9"),
          fontSize: 12,
        ),
        SizedBox(
          height: mq.height * 0.03,
        ),
        cardWidget(mq),
        cardWidget(mq),
        cardWidget(mq),
        Spacer(),
        ButtonWidget(
          text: 'Send',
          onPressed: () {},
        ),
        Spacer()
      ]),
    ));
  }
}
