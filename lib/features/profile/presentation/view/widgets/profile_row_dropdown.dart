import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_dropdown.dart';

class ProfileRowDropdownWidget extends StatelessWidget {
  const ProfileRowDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Gender',
          style: TextStyles.style13.copyWith(
            color: ColorName.white.withOpacity(.33),
          ),
        ),
        const SizedBox(width: 29),
        const SizedBox(
          width: 200,
          child: ProfileDropdownWidget(),
        ),
      ],
    );
  }
}
