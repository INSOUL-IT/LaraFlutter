import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/types/admin_layout.dart';
import 'package:lara_flutter/modules/user/states/user_state.dart';
import 'package:provider/provider.dart';

class UserCreate extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<UserState>(
      builder: (context, state, child) {
        nameController.text = state.userInformation["name"];
        emailController.text = state.userInformation["email"];
        passwordController.text = state.userInformation["password"];
        cPasswordController.text =
            state.userInformation["password_confirmation"];

        return AdminLayout(
          view: Container(
            width: 500,
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      // controller: nameController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Enter your name',
                        labelText: 'Name',
                      ),
                      onChanged: (value) => state.setUserName(value),
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today),
                        hintText: 'Email',
                        labelText: 'email',
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        hintText: 'Enter a password',
                        labelText: 'Password',
                      ),
                    ),
                    TextFormField(
                      controller: cPasswordController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        hintText: 'Enter a confirm password',
                        labelText: 'Confirm Password',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 150.0, top: 40.0),
                      child: TextButton(
                        child: Text('Submit'),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            state.createUser();
                          }
                        },
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(state.userInformation['name']),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
