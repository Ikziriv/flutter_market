import 'package:flutter/material.dart';

class LinearStyles {
  static LinearGradient gradientBankCard(Color startColor, Color endColor) {
    return LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [startColor, endColor],
        stops: [0.0, 0.7]);
  }
}
