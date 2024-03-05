import 'package:lou_bank_core/lou_bank_core.dart';

class LouBankCreditCardBlack extends LouBankCustomCreditCard {
  const LouBankCreditCardBlack({super.key, required String bgImage})
      : super(isBlack: true, imageSvgPath: bgImage);
}
