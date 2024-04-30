import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class ProfileCustomFormWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool? isReadOnly;
  final String hintText;
  final String? Function(dynamic value) validate;
  const ProfileCustomFormWidget({
    super.key,
    this.isReadOnly,
    this.textInputType,
    required this.hintText,
    required this.controller,
    required this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      readOnly: isReadOnly ?? false,
      controller: controller,
      textAlign: TextAlign.right,
      style: isReadOnly == null
          ? TextStyles.style13
          : TextStyles.style13.copyWith(
              color: ColorName.white.withOpacity(.3),
            ),
      validator: (value) => validate(value),
      keyboardType: textInputType,
      decoration: InputDecoration(
        fillColor: ColorName.alto.withOpacity(.06),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyles.style13.copyWith(
          color: ColorName.white.withOpacity(.3),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        enabledBorder: _outlineInputBorder(),
        border: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ColorName.white.withOpacity(.22),
        ),
      );
}
