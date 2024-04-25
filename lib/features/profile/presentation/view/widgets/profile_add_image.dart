import 'package:flutter/material.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class ProfileAddImageWidget extends StatelessWidget {
  const ProfileAddImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 57,
          width: 57,
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: ColorName.white.withOpacity(.08),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Assets.icons.union.svg(fit: BoxFit.scaleDown),
        ),
        Text(
          'Add image',
          style: TextStyles.style14.copyWith(
            fontWeight: FontWeight.w500,
            color: ColorName.white.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
