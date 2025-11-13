import 'package:clot_ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:clot_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:clot_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:clot_ecommerce/features/auth/presentation/views/enter_password_view.dart';
import 'package:clot_ecommerce/features/auth/presentation/views/sign_in_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signupText(context),
            const SizedBox(height: 32),
            _firstNameField(context),
            const SizedBox(height: 16),
            _lastNameField(context),
            const SizedBox(height: 16),
            _emailField(context),
            const SizedBox(height: 16),
            _passwordField(context),
            const SizedBox(height: 40),
            _continueButton(context),
            const SizedBox(height: 40),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return const Text(
      "Create Account",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: "Firstname"));
  }

  Widget _lastNameField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: "Lastname"));
  }

  Widget _emailField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: "Email Address"));
  }

  Widget _passwordField(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: "Password"));
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, EnterPasswordView());
      },
      title: "Continue",
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Do you have an account? "),
          TextSpan(
            text: "Sign In ",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, SignInView());
              },
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
