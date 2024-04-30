import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/manger/profile_cubit/profile_cubit.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_about_forms.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_add_image.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_top_card.dart';

class ProfileEditAboutWidget extends StatelessWidget {
  const ProfileEditAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 18, left: 27, bottom: 25, right: 14),
      decoration: _boxDecoration(),
      child:   Column(
        children: [
          ProfileTopCardWidget(
            title: 'About',
            onTap: () {
              context.read<ProfileCubit>().editProfile();
            },
            actionIcon: const Text(
              'Save & Update',
              style: TextStyles.style12,
            ),
          ),
          const SizedBox(height: 28),
          const ProfileAddImageWidget(),
          const SizedBox(height: 29),
          const ProfileAboutFormsWidget(),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        color: ColorName.aztec,
        borderRadius: BorderRadius.circular(14),
      );
}
