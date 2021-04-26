import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;
  EmailField({this.emailController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'Email',
          labelText: 'email',
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter email';
          }
          return null;
        },
      ),
    );
  }
}
