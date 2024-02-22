import 'package:flutter/material.dart';
import 'package:lou_bank_core/src/widgets/buttons/lou_bank_custom_button.dart';

class LouBankNavigationBarButton extends LouBankCustomButton {
  const LouBankNavigationBarButton(
      {super.key,
      Decoration? decoration,
      Widget? child,
      VoidCallback? onPressed,
      ShapeBorder? shape,
      EdgeInsetsGeometry padding = EdgeInsets.zero})
      : super(
          onPressed: onPressed,
          child: child,
          decoration: decoration,
          color: const Color(0xff202020),
          shape: shape ?? const RoundedRectangleBorder(),
          padding: padding,
        );
}
