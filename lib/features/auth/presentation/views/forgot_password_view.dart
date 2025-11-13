import 'package:clot_ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:clot_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:clot_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:clot_ecommerce/features/auth/presentation/views/enter_password_view.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _forgotPassword(context),
            const SizedBox(height: 32),
            _emailField(context),
            const SizedBox(height: 16),
            _continueButton(context),
          ],
        ),
      ),
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return const Text(
      "Forgot Password",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: "Enter Email Address"),
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
}
