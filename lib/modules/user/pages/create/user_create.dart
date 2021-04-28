import 'package:flutter/material.dart';
import 'package:lara_flutter/modules/layout/types/base_admin_layout.dart';
import 'package:lara_flutter/modules/user/pages/create/components/add_user_button.dart';
import 'package:lara_flutter/modules/user/pages/create/form_fields/confirm_password_field.dart';
import 'package:lara_flutter/modules/user/pages/create/form_fields/email_field.dart';
import 'package:lara_flutter/modules/user/pages/create/form_fields/password_field.dart';
import 'package:lara_flutter/modules/user/pages/create/form_fields/user_name_field.dart';
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
                        UserNameField(
                          nameController: nameController,
                        ),
                        EmailField(
                          emailController: emailController,
                        ),
                        PasswordField(
                          passwordController: passwordController,
                        ),
                        ConfirmPasswordField(
                          confirmPasswordController: cPasswordController,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState.validate()) {
                              state.userInformation['name'] =
                                  nameController.text;
                              state.userInformation['email'] =
                                  emailController.text;
                              state.userInformation['password'] =
                                  passwordController.text;
                              state.userInformation['password_confirmation'] =
                                  cPasswordController.text;
                              state.createUser();
                            }
                          },
                          child: AddUserButton(
                            buttonName: "Add User",
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
