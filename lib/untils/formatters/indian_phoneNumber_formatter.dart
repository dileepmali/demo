import 'package:flutter/services.dart';

class IndianPhoneNumberFormatter extends TextInputFormatter {
  // Format phone number as 99999-99999 while typing
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String digits = newValue.text.replaceAll(RegExp(r'\D'), '');
    String newText = '';

    for (int i = 0; i < digits.length && i < 10; i++) {
      if (i == 5) newText += '-';
      newText += digits[i];
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
