import 'package:lou_bank_core/lou_bank_core.dart';

class LouBankCreditCardBlack extends LouBankCustomCreditCard {
  const LouBankCreditCardBlack({super.key})
      : super(
            isBlack: true, imageSvgPath: "assets/images/credit_card_black.svg");
}
