import 'package:lou_bank_core/lou_bank_core.dart';

class LouBankCreditCardMint extends LouBankCustomCreditCard {
  const LouBankCreditCardMint({super.key, required String bgImage})
      : super(imageSvgPath: bgImage);
}
