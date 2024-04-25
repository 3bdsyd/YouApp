import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';

class ProfileAboutFormsWidget extends StatelessWidget {
  const ProfileAboutFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            fillColor: ColorName.alto.withOpacity(.06),
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: ColorName.white.withOpacity(.22),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
