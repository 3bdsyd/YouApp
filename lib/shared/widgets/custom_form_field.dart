import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class CustomFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final Iterable<String>? autofillHints;
  final Function(dynamic value) validator;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final bool? obscureText;

  final String hintText;
  const CustomFormFieldWidget({
    super.key,
    this.suffixIcon,
    this.obscureText,
    this.textInputType,
    this.autofillHints,
    required this.controller,
    required this.validator,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => validator(value),
      controller: controller,
      autofillHints: autofillHints,
      style: TextStyles.style13,
      cursorColor: ColorName.downy,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 18),
          child: GestureDetector(child: suffixIcon),
        ),
        suffixIconConstraints: const BoxConstraints(
          minHeight: 17,
          maxHeight: 17,
          maxWidth: 38,
          minWidth: 38,
        ),
        contentPadding: const EdgeInsets.all(18),
        hintText: hintText,
        hintStyle: TextStyles.style13.copyWith(
          color: ColorName.white.withOpacity(.5),
        ),
        fillColor: ColorName.plantation,
        filled: true,
        border: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() => OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(9),
      );
}
