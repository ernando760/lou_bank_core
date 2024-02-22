import 'package:flutter/material.dart';

class LouBankCustomIcon extends StatelessWidget {
  const LouBankCustomIcon({super.key, this.size = 20, required this.icon});
  final double? size;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size! * 2,
      height: size! * 1.2,
      child: icon,
    );
  }
}
