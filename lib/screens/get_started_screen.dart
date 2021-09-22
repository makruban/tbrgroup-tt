import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tbrgroup_tt/widgets/floating_action_widget.dart';
import '../widgets/alert_dialog_widget.dart';
import '../widgets/number_input_formatter.dart';
import '../constants.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final _phoneController = TextEditingController();
  var _visibleDelete = false;
  var _isDisabled = false;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void _onChanged(String text) {
    if(text.isEmpty){
      _clearController();
    }
    if (text.length == 2) {
      setState(() {
        _visibleDelete = true;
      });
    }
    if (text.length == 14) {
      setState(() {
        _isDisabled = true;
      });
    }
  }

  void _clearController() {
    _phoneController.clear();
    setState(() {
      _visibleDelete = false;
      _isDisabled = false;
    });
  }

  void _showAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialogWidget(clean: _clearController);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          kExpanded,
          Expanded(
            child: Padding(
              padding: kFormPadding,
              child: Form(
                child: TextFormField(
                  autofocus: true,
                  controller: _phoneController,
                  decoration: InputDecoration(
                    hintText: kHintText,
                    suffixIcon: _visibleDelete
                        ? IconButton(
                            icon: kIconDel,
                            onPressed: () {
                              _clearController();
                            },
                          )
                        : null,
                    helperText: kHelperText,
                    helperStyle: kHelperStyle,
                    focusedBorder: kFocusBorder,
                  ),
                  keyboardType: TextInputType.phone,
                  // maxLength: 10,
                  inputFormatters: [
                    NumberInputFormatter(),
                  ],
                  onChanged: _onChanged,
                  style: kTextNumberStyle,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionWidget(
        isDisabled: _isDisabled,
        showDialog: _showAlertDialog,
      ),
    );
  }
}
