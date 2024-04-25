import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class ProfileCustomFormWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? textInputType;

  final String hintText;
  const ProfileCustomFormWidget({
    super.key,
    required this.hintText,
    this.textInputType,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: TextAlign.right,
      style: TextStyles.style13,
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
