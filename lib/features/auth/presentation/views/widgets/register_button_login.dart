import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/router/app_router.gr.dart';
import 'package:you_app/core/styles/text_styles.dart';

class RegisterButtonLoginWidget extends StatelessWidget {
  const RegisterButtonLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(const LoginRoute()),
      child: Text.rich(
        TextSpan(
          text: 'Have an account? ',
          children: [
            TextSpan(
              text: 'Login here',
              style: TextStyles.style13.copyWith(
                color: ColorName.gold,
                decoration: TextDecoration.underline,
                decorationColor: ColorName.gold,
              ),
            ),
          ],
        ),
        style: TextStyles.style13,
      ),
    );
  }
}
