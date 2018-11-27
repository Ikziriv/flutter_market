import 'package:flutter/material.dart';

class TextStyles {
  const TextStyles();

  static const TextStyle btnMasuk = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat');

  static const TextStyle btnDaftar = const TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline);

  static const TextStyle btnKirim = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat');

  static const TextStyle labelLogin =
      const TextStyle(fontFamily: 'Montserrat', color: Colors.grey);

  static const TextStyle bankTitle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontSize: 20.0,
  );

  static const TextStyle loanAmountTitle = const TextStyle(
      color: Colors.white70, fontWeight: FontWeight.w400, fontSize: 14.0);

  static const TextStyle rupee = const TextStyle(
      color: Colors.white70, fontWeight: FontWeight.w100, fontSize: 10.0);

  static const TextStyle applyButton = const TextStyle(
    color: Color.fromRGBO(62, 130, 160, 1.0),
    fontWeight: FontWeight.w400,
    fontSize: 20.0,
  );
}
