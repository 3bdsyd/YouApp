import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/features/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:you_app/features/auth/presentation/views/widgets/login_forms.dart';
import 'package:you_app/shared/widgets/custom_app_bar.dart';
import 'package:you_app/shared/widgets/custom_button.dart';
import 'package:you_app/features/auth/presentation/views/widgets/login_button_register.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CustomAppBarWidget(),
          const SizedBox(height: 60),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: LoginFormsWidget(),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: CustomButtonWidget(
              text: 'Login',
              onTap: () async => await context.read<LoginCubit>().login(),
            ),
          ),
          const SizedBox(height: 40),
          const LoginButtonRegisterWidget(),
        ],
      ),
    );
  }
}
