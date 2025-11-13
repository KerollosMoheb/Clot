import 'package:clot_ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:clot_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:clot_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:clot_ecommerce/features/auth/presentation/views/enter_password_view.dart';
import 'package:clot_ecommerce/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(hideBack: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 32),
            _emailField(context),
            const SizedBox(height: 16),
            _continueButton(context),
            const SizedBox(height: 16),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      "Sign In",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: "Email Address"),
    );
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
          TextSpan(text: "Don't have an account? "),
          TextSpan(
            text: "Create one ",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, SignUpView());
              },
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
