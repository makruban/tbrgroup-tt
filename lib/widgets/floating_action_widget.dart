import 'package:flutter/material.dart';
import 'package:tbrgroup_tt/constants.dart';

class FloatingActionWidget extends StatelessWidget {

  bool isDisabled;
  final Function showDialog;

  FloatingActionWidget({required this.isDisabled, required this.showDialog});

  @override
  Widget build(BuildContext context) {
    return isDisabled ? FloatingActionButton(
      onPressed: (){
        showDialog();
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
