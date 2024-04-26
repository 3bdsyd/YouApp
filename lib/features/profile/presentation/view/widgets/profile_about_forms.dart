import 'package:flutter/material.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_custom_row_form.dart';
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
          textInputType: TextInputType.name,
        ),
        SizedBox(height: 12),
        ProfileRowDropdownWidget(),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Birthday:',
          hintText: 'DD MM YYYY',
          textInputType: TextInputType.number,
        ),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Horoscope:',
          hintText: '--',
          isReadOnly: true,
        ),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Zodiac:',
          hintText: '--',
          isReadOnly: true,
        ),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Height:',
          hintText: 'Add height',
          textInputType: TextInputType.number,
        ),
        SizedBox(height: 12),
        ProfileCustomRowFormWidget(
          label: 'Weight:',
          hintText: 'Add weight',
          textInputType: TextInputType.number,
        ),
      ],
    );
  }
}
