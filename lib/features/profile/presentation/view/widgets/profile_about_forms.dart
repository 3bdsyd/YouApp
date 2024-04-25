import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_custom_row_form.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_dropdown.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_row_dropdown.dart';

class ProfileAboutFormsWidget extends StatelessWidget {
  const ProfileAboutFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileCustomRowFormWidget(
          label: 'Display name:',
          hintText: 'Enter name',
        ),
        SizedBox(height: 12),
        ProfileRowDropdownWidget(),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Birthday:',
          hintText: 'DD MM YYYY',
        ),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Horoscope:',
          hintText: '--',
        ),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Zodiac:',
          hintText: '--',
        ),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Height:',
          hintText: 'Add height',
        ),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Weight:',
          hintText: 'Add weight',
        ),
      ],
    );
  }
}
