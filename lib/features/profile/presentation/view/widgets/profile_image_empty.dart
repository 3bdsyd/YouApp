import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class ProfileImageEmptyWidget extends StatelessWidget {
  const ProfileImageEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 190,
      padding: const EdgeInsets.only(left: 13, bottom: 17),
      decoration: BoxDecoration(
        color: ColorName.mirage,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Text(
        '@johndoe123,',
        style: TextStyles.style16,
      ),
    );
  }
}
