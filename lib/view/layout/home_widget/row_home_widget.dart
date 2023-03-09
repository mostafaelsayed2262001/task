import 'package:flutter/material.dart';

Widget rowHomeWidget(){
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/icon/picIcon.png'),
        const SizedBox(
          width: 20,
        ),
        Image.asset('images/icon/camIcon.png'),
        const SizedBox(
          width: 20,
        ),
        Image.asset('images/icon/sunderIcon.png'),
      ]);
}