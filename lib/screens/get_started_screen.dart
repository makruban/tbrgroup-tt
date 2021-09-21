import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Get Started',
          ),
          Form(
            key: _keyForm,
            child: TextFormField(
              decoration: const InputDecoration(
                // labelText: 'Enter a nuber',
                hintText: '(201) 555-0123',
                suffixIcon: Icon(Icons.dangerous),
                helperText: 'Enter your phone number',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
              inputFormatters: [
                // FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter(RegExp(r'^[()\d -]{1,15}$'),
                    allow: true)
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_keyForm.currentState!.validate()) {
      // ignore: avoid_print
      print('Form is valid');
    }
  }

// bool _validateNumber(String number){
//   final _numExp = RegExp(r'^\(\d\d\d\))
// }
}
