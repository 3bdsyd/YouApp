import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:you_app/core/router/app_router.gr.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/shared/widgets/custom_gradient_text.dart';

class LoginButtonRegisterWidget extends StatelessWidget {
  const LoginButtonRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'No account? ',
          style: TextStyles.style13,
        ),
        InkWell(
          onTap: () => context.router.push(const RegisterRoute()),
          child: CustomGradientTextWidget(
            text: 'Register here',
            style: TextStyles.style13.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
