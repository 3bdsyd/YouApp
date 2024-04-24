import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/core/utils/validators/forms_validate.dart';
import 'package:you_app/features/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:you_app/shared/widgets/custom_form_field.dart';

class LoginFormsWidget extends StatelessWidget {
  const LoginFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: Text(
              'Login',
              style: TextStyles.style24,
            ),
          ),
          const SizedBox(height: 25),
          CustomFormFieldWidget(
            hintText: 'Enter Username/Email',
            controller: context.read<LoginCubit>().emailController,
            autofillHints: const [AutofillHints.email],
            validator: (value) => FormsValidate.getEmptyValidate(value),
          ),
          const SizedBox(height: 15),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) => CustomFormFieldWidget(
              hintText: '********',
              controller: context.read<LoginCubit>().passwordController,
              autofillHints: const [AutofillHints.password],
              validator: (value) => FormsValidate.getPasswordValidate(value),
              obscureText: context.read<LoginCubit>().getShowPassword,
              suffixIcon: GestureDetector(
                onTap: () => context.read<LoginCubit>().setShowPassword(
                      context.read<LoginCubit>().getShowPassword,
                    ),
                child: context.read<LoginCubit>().getShowPassword
                    ? const Icon(
                        Icons.remove_red_eye_outlined,
                        color: ColorName.gold,
                      )
                    : Assets.icons.hiddenEye.svg(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
