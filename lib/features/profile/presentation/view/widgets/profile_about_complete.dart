import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/features/profile/presentation/manger/profile_cubit/profile_cubit.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_about_item_complete.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_top_card.dart';

class ProfileAboutCompleteWidget extends StatelessWidget {
  const ProfileAboutCompleteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 18,
        left: 27,
        bottom: 25,
        right: 14,
      ),
      decoration: _boxDecoration(),
      child: Column(
        children: [
          ProfileTopCardWidget(
            title: 'About',
            onTap: () => context.read<ProfileCubit>().setShowEditAbout(true),
            actionIcon: Assets.icons.edit.svg(),
          ),
          const SizedBox(height: 24),
          ProfileAboutItemComplete(
            leading: 'Birthday: ',
            title:
                context.read<ProfileCubit>().profileData!.birthday.toString(),
          ),
          ProfileAboutItemComplete(
            leading: 'Horoscope: ',
            title:
                context.read<ProfileCubit>().profileData!.horoscope.toString(),
          ),
          ProfileAboutItemComplete(
            leading: 'Zodiac: ',
            title: context.read<ProfileCubit>().profileData!.zodiac.toString(),
          ),
          ProfileAboutItemComplete(
            leading: 'Height: ',
            title:
                '${context.read<ProfileCubit>().profileData!.height.toString()} cm',
          ),
          ProfileAboutItemComplete(
            leading: 'Weight: ',
            title:
                '${context.read<ProfileCubit>().profileData!.weight.toString()} kg',
          ),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        color: ColorName.aztec,
        borderRadius: BorderRadius.circular(14),
      );
}
