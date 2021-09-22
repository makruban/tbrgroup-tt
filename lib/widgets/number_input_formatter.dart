import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    final digitNewValue = newValue.text.replaceAll(RegExp(r'[^\d]+'), '');
    final chars = digitNewValue.split('');
    var newString = <String>[];
    for(var i = 0; i < chars.length; i++){
      switch (i){
        case 0:
          newString.add('(');
          newString.add(chars[i]);
          break;
        case 3:
          newString.add(')');
          newString.add(' ');
          newString.add(chars[i]);
          break;
        case 6:
          newString.add('-');
          newString.add(chars[i]);
          break;
        default:
          newString.add(chars[i]);
      }
    }
    final resultString = newString.join('');

    return TextEditingValue(
      text: resultString,
      selection: TextSelection.collapsed(offset: resultString.length),
    );
  }
}
