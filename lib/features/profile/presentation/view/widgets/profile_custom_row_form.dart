import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_custom_form.dart';

class ProfileCustomRowFormWidget extends StatelessWidget {
  final TextInputType? textInputType;
  final bool? isReadOnly;
  final String hintText;
  final String label;
  final TextEditingController controller;
  final String? Function(dynamic value) validate;
  const ProfileCustomRowFormWidget({
    super.key,
    this.isReadOnly,
    this.textInputType,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyles.style13.copyWith(
            color: ColorName.white.withOpacity(.33),
          ),
        ),
        const SizedBox(width: 29),
        SizedBox(
          width: 200,
          child: ProfileCustomFormWidget(
            hintText: hintText,
            controller: controller,
            isReadOnly: isReadOnly,
            textInputType: textInputType,
            validate: (value) => validate(value),
          ),
        ),
      ],
    );
  }
}
