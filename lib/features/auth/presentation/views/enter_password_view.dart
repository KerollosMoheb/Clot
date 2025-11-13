import 'package:clot_ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:clot_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:clot_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:clot_ecommerce/features/auth/presentation/views/forgot_password_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordView extends StatelessWidget {
  const EnterPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 32),
            _passwordField(context),
            const SizedBox(height: 16),
            _continueButton(context),
            const SizedBox(height: 16),
            _forgotPassword(context),
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

  Widget _passwordField(BuildContext context) {
    return const TextField(decoration: InputDecoration(hintText: "Password"));
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(onPressed: () {}, title: "Continue");
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Forgot Password ? "),
          TextSpan(
            text: "Reset ",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, ForgotPasswordView());
              },
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
