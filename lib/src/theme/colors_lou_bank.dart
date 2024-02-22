import 'package:flutter/material.dart';

class ColorsLouBank {
  // Colors | Accent |> Active states
  static const yellow = Color(0xFFF2FE8D);
  static const mint = Color(0xFFB2D0CE);
  static const lilcac = Color(0xFFAA9EB7);
  // Colors | Graybase |> Alternate states
  static const gray1 = Color(0xFF252525);
  static const gray2 = Color(0xFF212121);
  static const gray3 = Color(0xFF79767D);
  // Colors | Gradient |> Alternate states
  static const gradientMint = LinearGradient(
      colors: [Color(0xFFEAEAEA), Color(0xFFB2D0CE)],
      begin: Alignment.topRight,
      end: Alignment.center);
  static const gradientYellow = LinearGradient(
      colors: [Color(0xFFFCFFDF), Color(0xFFF1FE87)],
      begin: Alignment.topRight,
      end: Alignment.center);
  static const gradientPurple = LinearGradient(colors: [
    Color(0xFFF2EFF4),
    Color(0xFFB8A9C6),
  ], begin: Alignment.topRight, end: Alignment.center);
}
