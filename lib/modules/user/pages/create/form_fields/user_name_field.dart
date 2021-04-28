import 'package:flutter/material.dart';

class UserNameField extends StatelessWidget {
  final TextEditingController nameController;
  UserNameField({this.nameController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: TextFormField(
        controller: nameController,
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'Enter your name',
          labelText: 'Name',
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter user name';
          }
          return null;
        },
      ),
    );
  }
}
