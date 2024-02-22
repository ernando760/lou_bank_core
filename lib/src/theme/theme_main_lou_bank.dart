import 'package:flutter/material.dart';
import 'package:lou_bank_core/lou_bank_core.dart';

class ThemeMainLouBank {
  static final theme = ThemeData(
      scaffoldBackgroundColor: ColorsLouBank.gray1,
      appBarTheme: const AppBarTheme(
          backgroundColor: ColorsLouBank.gray1,
          centerTitle: true,
          foregroundColor: Colors.white),
      checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return const Color(0xFF1B1C1C);
            }
            return ColorsLouBank.mint;
          }),
          fillColor: const MaterialStatePropertyAll(Colors.black),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      bottomAppBarTheme: BottomAppBarTheme(
          padding: const EdgeInsets.only(top: 15, left: 24, bottom: 27),
          height: 82,
          color: const Color(0xFF1E1E1E).withOpacity(.8),
          shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color(0xFF1E1E1E).withOpacity(.8),
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          selectedItemColor: ColorsLouBank.yellow,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle:
              TextStyleLouBank.caption10Medium.copyWith(color: Colors.white),
          selectedIconTheme: const IconThemeData(color: ColorsLouBank.yellow),
          selectedLabelStyle: TextStyleLouBank.caption10Medium
              .copyWith(color: ColorsLouBank.yellow)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorsLouBank.yellow,
              textStyle: TextStyleLouBank.caption14Medium)));
}
