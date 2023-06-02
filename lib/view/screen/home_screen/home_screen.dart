import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:interview/string.dart';
import 'package:interview/view/layout/body_widget.dart';
import 'package:interview/view/layout/buttom_widget.dart';
import 'package:interview/view/layout/home_widget/row_home_widget.dart';
import 'package:interview/view/layout/text_utiles.dart';
import 'package:interview/view/screen/home_screen/result_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: HexColor("#1A1A1A"),
        body: BodyWidget(
            widget: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 26),
            height: 5,
            width: mq.width*0.2,
            decoration: BoxDecoration(
                color: HexColor('#D9D9D9'),
                borderRadius: BorderRadius.circular(5)),
          ),
          Container(
              alignment: Alignment.topRight,
              child: IconButton(
                padding: const EdgeInsets.all(0),
                icon: Image.asset('images/icon/menuIcon.png'),
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
            text: 'Place qr code inside the frame to scan please',
            color: kColor,
            fontSize: 12,
          ),
           SizedBox(
            height: mq.height*0.001,
          ),
          TextUtils(
            text: 'avoid shake to get results quickly',
            color: HexColor("##B9B9B9"),
            fontSize: 12,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: mq.height * 0.06),
            child: Column(children: [
              Image.asset('images/qrscan.png', height: mq.height * 0.2),
               SizedBox(
                height: mq.height*0.01,
              ),
              TextUtils(
                text: 'Scanning Code...',
                fontWeight: FontWeight.w400,
                color: kColor,
                fontSize: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: mq.height * 0.03,
                ),
                child: rowHomeWidget(),
              ),
              ButtonWidget(
                text: 'Place Camera Code',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ResultScreen()));
                },
              ),
            ]),
          )
        ])));
  }
}
