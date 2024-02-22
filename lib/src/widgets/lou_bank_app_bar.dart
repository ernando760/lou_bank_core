import 'package:flutter/material.dart';

class LouBankAppBar extends StatelessWidget {
  const LouBankAppBar(
      {super.key,
      this.leading,
      this.traling,
      this.padding = EdgeInsets.zero,
      this.title,
      this.decoration});
  final Widget? leading;
  final Widget? traling;
  final EdgeInsetsGeometry padding;
  final Widget? title;
  final Decoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: padding,
      width: MediaQuery.sizeOf(context).width,
      decoration: decoration,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
                fit: FlexFit.tight,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: leading != null ? leading! : const SizedBox())),
            Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Align(
                    alignment: Alignment.center,
                    child: title != null ? title! : const SizedBox())),
            Flexible(
                fit: FlexFit.tight,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: traling != null ? traling! : const SizedBox())),
          ],
        ),
      ),
    );
  }
}
