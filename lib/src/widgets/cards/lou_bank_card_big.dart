import 'package:flutter/material.dart';
import 'package:lou_bank_core/src/theme/text_style_lou_bank.dart';

class LouBankCardBig extends StatelessWidget {
  const LouBankCardBig(
      {super.key,
      this.background,
      required this.logo,
      required this.price,
      required this.chip,
      required this.codeCard});
  final Gradient? background;
  final Widget logo;
  final String price;
  final Widget chip;
  final String codeCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          gradient: background, borderRadius: BorderRadius.circular(26)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: SizedBox(child: logo)),
              Flexible(
                child: Text(
                  price,
                  style: TextStyleLouBank.body17Bold.copyWith(fontSize: 20),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: chip,
                  ),
                  Text(
                    codeCard,
                    style: TextStyleLouBank.body15SemiBold,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "VALID THRU",
                    style: TextStyleLouBank.caption10Medium,
                  ),
                  Text(
                    "12/22",
                    style: TextStyleLouBank.body15SemiBold,
                  ),
                ],
              ),
            ],
          ),
          // const SizedBox(height: 20),
          Text(
            "ERNANDO MANOEL",
            style: TextStyleLouBank.caption10Medium,
          )
        ],
      ),
    );
  }
}
