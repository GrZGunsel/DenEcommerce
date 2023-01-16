import 'package:den_ecommerce/core/constant/den_theme.dart';
import 'package:den_ecommerce/widgets/formWidget/customButton.dart';
import 'package:den_ecommerce/widgets/formWidget/customTextField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  String? _userName;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                    )),
                child: Image.network(
                  "https://images.unsplash.com/photo-1593305841991-05c297ba4575?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1057&q=80",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.024,
                    ),
                    Text(
                      "Login Panel",
                      style: DenTheme.largeheadingStyle,
                    ),
                    Text(
                      "Please enter your email and password to proceed.",
                      style: DenTheme.smallTextLabel,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.024,
                    ),
                    _buildUserName(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.016,
                    ),
                    _buildPassword(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.032,
                    ),
                    CustomButton(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account ?",
                            style: DenTheme.textLabel,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Register",
                              style: DenTheme.textLabel
                                  .copyWith(color: DenTheme.primaryColor),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserName() {
    return CustomTextField(
      labelText: "Email Address",
      isFilled: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Description is required';
        }
        // validator has to return something
        return null;
      },
      onSaved: (value) => _userName = value!,
    );
  }

  Widget _buildPassword() {
    return CustomTextField(
      labelText: "Password",
      isPassword: true,
      isFilled: true,
      validator: (value) {
        int len = value!.length;
        if (value.isEmpty) {
          return 'Password is empty';
        }
        if (len == 0 || len < 6) {
          return 'Password must be at least 6 character';
        }
      },
      onSaved: (value) => _userName = value!,
    );
  }
}
