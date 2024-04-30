import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/features/auth/presentation/manger/register_cubit/register_cubit.dart';
import 'package:you_app/features/auth/presentation/views/widgets/register_button_login.dart';
import 'package:you_app/features/auth/presentation/views/widgets/register_forms.dart';
import 'package:you_app/shared/widgets/custom_app_bar.dart';
import 'package:you_app/shared/widgets/custom_button.dart';

class RegisterBodyWidget extends StatelessWidget {
  const RegisterBodyWidget({super.key});

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
            child: RegisterFormsWidget(),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: CustomButtonWidget(
              text: 'Register',
              onTap: () async => await context.read<RegisterCubit>().register(
                 ),
            ),
          ),
          const SizedBox(height: 40),
          const RegisterButtonLoginWidget(),
        ],
      ),
    );
  }
}
