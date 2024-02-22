import 'package:flutter/material.dart';

class LouBankCustomButton extends StatelessWidget {
  const LouBankCustomButton(
      {super.key,
      required this.child,
      this.onPressed,
      this.constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
      this.color,
      this.shape,
      this.gradient,
      this.padding = EdgeInsets.zero,
      this.width,
      this.height,
      this.decoration});
  final Widget? child;
  final VoidCallback? onPressed;
  final BoxConstraints constraints;
  final Color? color;
  final ShapeBorder? shape;
  final Decoration? decoration;
  final Gradient? gradient;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        elevation: 0,
        fillColor: color,
        shape: shape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(38)),
        child: Ink(
            width: width,
            height: height,
            padding: padding,
            decoration: decoration,
            child: child));
  }
}
