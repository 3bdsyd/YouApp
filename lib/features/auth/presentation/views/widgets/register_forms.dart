import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/core/utils/validators/forms_validate.dart';
import 'package:you_app/features/auth/presentation/manger/register_cubit/register_cubit.dart';
import 'package:you_app/shared/widgets/custom_form_field.dart';

class RegisterFormsWidget extends StatelessWidget {
  const RegisterFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: Text(
              'Register',
              style: TextStyles.style24,
            ),
          ),
          const SizedBox(height: 25),
          CustomFormFieldWidget(
            hintText: 'johndoe@gmail.com',
            controller: context.read<RegisterCubit>().emailController,
            textInputType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            validator: (value) => FormsValidate.getEmailValidate(value),
          ),
          const SizedBox(height: 15),
          CustomFormFieldWidget(
            hintText: 'johndoe123',
            controller: context.read<RegisterCubit>().usernameController,
            textInputType: TextInputType.name,
            autofillHints: const [AutofillHints.newUsername],
            validator: (value) => FormsValidate.getUsernameValidate(value),
          ),
          const SizedBox(height: 15),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) => CustomFormFieldWidget(
              obscureText: context.read<RegisterCubit>().getShowPassword,
              hintText: '********',
              textInputType: TextInputType.visiblePassword,
              controller: context.read<RegisterCubit>().passwordController,
              autofillHints: const [AutofillHints.newPassword],
              validator: (value) => FormsValidate.getPasswordValidate(value),
              suffixIcon: GestureDetector(
                onTap: () => context.read<RegisterCubit>().setShowPassword(
                      context.read<RegisterCubit>().getShowPassword,
                    ),
                child: context.read<RegisterCubit>().getShowPassword
                    ? const Icon(
                        Icons.remove_red_eye_outlined,
                        color: ColorName.gold,
                      )
                    : Assets.icons.hiddenEye.svg(),
              ),
            ),
          ),
          const SizedBox(height: 15),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) => CustomFormFieldWidget(
              obscureText:
                  context.read<RegisterCubit>().getShowPasswordConfirmation,
              hintText: '********',
              textInputType: TextInputType.visiblePassword,
              controller:
                  context.read<RegisterCubit>().passwordConfirmationController,
              autofillHints: const [AutofillHints.newPassword],
              validator: (value) =>
                  FormsValidate.getPasswordConfirmationValidate(
                value,
                context.read<RegisterCubit>().passwordController.text,
              ),
              suffixIcon: GestureDetector(
                onTap: () => context
                    .read<RegisterCubit>()
                    .setShowPasswordConfirmation(
                      context.read<RegisterCubit>().getShowPasswordConfirmation,
                    ),
                child: context.read<RegisterCubit>().getShowPasswordConfirmation
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
