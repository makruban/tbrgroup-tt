import 'package:flutter/material.dart';
import 'package:tbrgroup_tt/constants.dart';
import '../widgets/alert_dialog_widget.dart';

class FloatingActionWidget extends StatelessWidget {

  bool isDisabled;
  final Function showDialog2;

  FloatingActionWidget({required this.isDisabled, required this.showDialog2});

  @override
  Widget build(BuildContext context) {
    return isDisabled ? FloatingActionButton(
      onPressed: (){
        showDialog2();
      },
      child: kFloatingIcon,
    ) : FloatingActionButton(
      elevation: 0,
      onPressed: null,
      child: kFloatingIcon,
      backgroundColor: Colors.grey.shade200,
    );
  }
}
