import 'package:flutter/material.dart';

class ConfirmPasswordField extends StatelessWidget {
  final TextEditingController confirmPasswordController;
  ConfirmPasswordField({this.confirmPasswordController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: TextFormField(
        controller: confirmPasswordController,
        decoration: InputDecoration(
          icon: Icon(Icons.security),
          hintText: 'Enter a confirm password',
          labelText: 'Confirm Password',
        ),
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter confirm password';
          }
          return null;
        },
      ),
    );
  }
}
