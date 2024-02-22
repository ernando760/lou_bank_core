import 'package:flutter/material.dart';

import 'package:lou_bank_core/src/theme/text_style_lou_bank.dart';

class CardSmallWidget extends StatelessWidget {
  const CardSmallWidget(
      {super.key,
      required this.icon,
      required this.label,
      required this.color});
  final Widget icon;
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 24),
      constraints: const BoxConstraints(
        minWidth: 100,
        maxHeight: 110,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: const Color(0xFF252626)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            child: icon,
          ),
          Container(
            constraints: const BoxConstraints(
                maxWidth: 80, minWidth: 60, maxHeight: 30, minHeight: 20),
            child: Text(
              label,
              style: TextStyleLouBank.caption10Medium
                  .copyWith(fontSize: 11, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
