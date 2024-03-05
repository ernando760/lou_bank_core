import 'package:flutter/material.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class LouBankCardMedium extends StatelessWidget {
  const LouBankCardMedium(
      {super.key,
      required this.icon,
      required this.tag,
      required this.value,
      required this.code,
      required this.gradientColor});
  final Widget icon;
  final String tag;
  final String value;
  final String code;
  final Gradient gradientColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 24, bottom: 20),
      width: 148,
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), gradient: gradientColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tag,
                style: TextStyleLouBank.caption10Medium.copyWith(fontSize: 11),
              ),
              Text(
                value,
                style: TextStyleLouBank.caption14Regular
                    .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Text(
            code,
            style: TextStyleLouBank.caption14Medium.copyWith(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
