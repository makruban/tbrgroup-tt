import 'package:flutter/material.dart';

const kAppTitle = 'Get Started Task';
const kExpanded = Expanded(
  flex: 2,
  child: Center(
    child: Text(
      'Get Started',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

const kFormPadding = EdgeInsets.only(left: 20, right: 20);
const kHintText = '(201) 555-0123';
const kIconDel = Icon(
  Icons.dangerous,
  color: Colors.grey,
);
const kHelperText = 'Enter your phone number';
const kHelperStyle = TextStyle(
  fontSize: 15,
);

const kFocusBorder = UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.black),
);
const kTextNumberStyle = TextStyle(
  fontSize: 20,
);
const kAlertIcon = Icon(
  Icons.done_outline,
  size: 30.0,
  color: Colors.green,
);
const kAlertContent = Text(
  'Thank you!',
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 20,
  ),
);
const kAlertText = Text('Done');
const kFloatingIcon = Icon(
  Icons.arrow_right_alt,
  color: Colors.white,
);
