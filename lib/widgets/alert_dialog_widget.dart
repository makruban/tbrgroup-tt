import 'package:flutter/material.dart';
import '../constants.dart';

class AlertDialogWidget extends StatelessWidget {
  final Function clean;
  AlertDialogWidget({required this.clean});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: kAlertIcon,
      content: kAlertContent,
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
          clean();
        }, child: kAlertText,),
      ],
    );
  }
}
