import 'package:flutter/material.dart';
import 'package:lou_bank_core/src/theme/colors_lou_bank.dart';

class LouBankScaffold extends Scaffold {
  LouBankScaffold(
      {super.key,
      required Widget body,
      double? height,
      double? width,
      Widget? louBankBottomNavigationBar})
      : super(
          body: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF433D48), ColorsLouBank.gray1])),
            child: SafeArea(child: body),
          ),
          bottomNavigationBar: louBankBottomNavigationBar,
        );
}
