import 'package:flutter/material.dart';

class LouBankCustomIconButton extends IconButton {
  LouBankCustomIconButton(
      {super.key,
      required super.onPressed,
      required super.icon,
      padding,
      ButtonStyle? style,
      super.iconSize = 20,
      super.constraints})
      : super(
          style: style ??
              IconButton.styleFrom(
                backgroundColor: const Color(0xFF363339),
              ),
        );
}
