import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_custom_form.dart';

class ProfileCustomRowFormWidget extends StatelessWidget {
  final TextInputType? textInputType;
  final bool? isReadOnly;
  final String hintText;
  final String label;

  const ProfileCustomRowFormWidget({
    super.key,
    this.isReadOnly,
    this.textInputType,
    required this.label,
    required this.hintText,
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
            controller: TextEditingController(),
            isReadOnly: isReadOnly,
            textInputType: textInputType,
          ),
        ),
      ],
    );
  }
}
