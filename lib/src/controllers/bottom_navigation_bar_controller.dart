import 'package:flutter/material.dart';

class LouBankBottonNavigationBarController extends ChangeNotifier {
  int initialPage;
  bool disableIcon;
  LouBankBottonNavigationBarController(
      {this.initialPage = 0, this.disableIcon = false});

  late int _position = initialPage;

  int get position => _position;

  void jumpToPage(int newPage) {
    _position = newPage;
    notifyListeners();
  }
}
