import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LouBankCustomCreditCard extends StatelessWidget {
  const LouBankCustomCreditCard(
      {super.key, this.isBlack = false, required this.imageSvgPath});
  final String imageSvgPath;
  final bool isBlack;
  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        SvgPicture.asset(
          imageSvgPath,
          alignment: Alignment.center,
          width: sizeOf.width,
          fit: BoxFit.contain,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(46)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    isBlack
                        ? "assets/images/visa_white.svg"
                        : "assets/images/visa.svg",
                  ),
                  SvgPicture.asset("assets/images/pay_pass.svg")
                ],
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/images/credit_card_chip.png"),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("•••• •••• ••••  4552",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: isBlack
                              ? Colors.white
                              : const Color(0xFF272A32))),
                  Text("02/24",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: isBlack
                              ? Colors.white
                              : const Color(0xFF272A32))),
                ],
              ),
              // const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("NAME SURNAME",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF272A32).withOpacity(.4))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
