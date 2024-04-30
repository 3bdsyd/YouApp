import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/utils/validators/forms_validate.dart';
import 'package:you_app/features/profile/presentation/manger/profile_cubit/profile_cubit.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_custom_row_form.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_row_dropdown.dart';

class ProfileAboutFormsWidget extends StatelessWidget {
  const ProfileAboutFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ProfileCubit>().globalKey,
      child: Column(
        children: [
          ProfileCustomRowFormWidget(
            label: 'Display name:',
            hintText: 'Enter name',
            textInputType: TextInputType.name,
            controller: context.read<ProfileCubit>().nameController,
            validate: (value) => FormsValidate.getNameValidate(value),
          ),
          const SizedBox(height: 12),
          const ProfileRowDropdownWidget(),
          const SizedBox(height: 12),
          ProfileCustomRowFormWidget(
            label: 'Birthday:',
            hintText: 'DD MM YYYY',
            textInputType: TextInputType.number,
            controller: context.read<ProfileCubit>().birthdayController,
            validate: (value) => FormsValidate.getEmptyValidate(value),
          ),
          const SizedBox(height: 12),
          ProfileCustomRowFormWidget(
            label: 'Horoscope:',
            hintText: '--',
            isReadOnly: true,
            controller: context.read<ProfileCubit>().horoscopeController,
            validate: (value) => null,
          ),
          const SizedBox(height: 12),
          ProfileCustomRowFormWidget(
            label: 'Zodiac:',
            hintText: '--',
            isReadOnly: true,
            controller: context.read<ProfileCubit>().zodiacController,
            validate: (value) => null,
          ),
          const SizedBox(height: 12),
          ProfileCustomRowFormWidget(
            label: 'Height:',
            hintText: 'Add height',
            textInputType: TextInputType.number,
            controller: context.read<ProfileCubit>().heightController,
            validate: (value) => FormsValidate.getNumberValidate(value),
          ),
          const SizedBox(height: 12),
          ProfileCustomRowFormWidget(
            label: 'Weight:',
            hintText: 'Add weight',
            textInputType: TextInputType.number,
            controller: context.read<ProfileCubit>().weightController,
            validate: (value) => FormsValidate.getNumberValidate(value),
          ),
        ],
      ),
    );
  }
}
