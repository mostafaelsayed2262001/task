import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final Color mainColor = HexColor("#FE7D55");
final Color kColor = HexColor("##B9B9B9");

class ThemesApp {
  static final light = ThemeData(
    primaryColor: mainColor,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );
}
