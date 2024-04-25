import 'package:flutter/material.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class ProfileDropdownWidget extends StatelessWidget {
  const ProfileDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: null,
      decoration: _inputDecoration(),
      icon: Assets.icons.downArrow.svg(),
      iconSize: 24,
      alignment: Alignment.centerRight,
      elevation: 16,
      isExpanded: true,
      hint: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Select Item Type',
          style: TextStyles.style13.copyWith(
            color: ColorName.white.withOpacity(.3),
          ),
        ),
      ),
      dropdownColor: ColorName.aztec,
      style: TextStyles.style13,
      onChanged: (String? newValue) {},
      items: <String>['Male', 'Female']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerRight,
            child: Text(
              value,
            ),
          ),
        );
      }).toList(),
    );
  }

  InputDecoration _inputDecoration() => InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorName.white.withOpacity(.22),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        filled: true,
        fillColor: ColorName.alto.withOpacity(.06),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorName.white.withOpacity(.22),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: ColorName.white.withOpacity(.22),
          ),
        ),
      );
}
