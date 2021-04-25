import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/types/base_admin_layout.dart';
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

        return BaseAdminLayout(
          section: "User",
          page: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 500,
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: 'Enter your name',
                              labelText: 'Name',
                            ),
                            onChanged: (value) => state.setUserName(value),
                          ),
                        ),
                        Container(
                          width: 500,
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              icon: Icon(Icons.email),
                              hintText: 'Email',
                              labelText: 'email',
                            ),
                            onChanged: (value) => state.setUserEmail(value),
                          ),
                        ),
                        Container(
                          width: 500,
                          child: TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              icon: Icon(Icons.security),
                              hintText: 'Enter a password',
                              labelText: 'Password',
                            ),
                            onChanged: (value) => state.setUserPassword(value),
                          ),
                        ),
                        Container(
                          width: 500,
                          child: TextFormField(
                            controller: cPasswordController,
                            decoration: InputDecoration(
                              icon: Icon(Icons.security),
                              hintText: 'Enter a confirm password',
                              labelText: 'Confirm Password',
                            ),
                            onChanged: (value) =>
                                state.setUserConfirmPassword(value),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState.validate()) {
                              state.createUser();
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 40),
                            width: 500,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Add User",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
