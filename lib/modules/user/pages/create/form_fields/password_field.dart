import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  PasswordField({this.passwordController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: TextFormField(
        controller: passwordController,
        decoration: InputDecoration(
          icon: Icon(Icons.security),
          hintText: 'Enter a password',
          labelText: 'Password',
        ),
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter password';
          }
          return null;
        },
      ),
    );
  }
}
