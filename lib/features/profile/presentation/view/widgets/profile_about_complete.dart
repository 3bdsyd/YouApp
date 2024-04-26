import 'package:flutter/material.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
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
            onTap: () => {},
            actionIcon: Assets.icons.edit.svg(),
          ),
          const SizedBox(height: 24),
          const ProfileAboutItemComplete(
            leading: 'Birthday: ',
            title: '28 / 08 / 1995 (Age 28)',
          ),
          const ProfileAboutItemComplete(
            leading: 'Horoscope: ',
            title: 'Virgo',
          ),
          const ProfileAboutItemComplete(
            leading: 'Zodiac: ',
            title: 'Pig',
          ),
          const ProfileAboutItemComplete(
            leading: 'Height: ',
            title: '175 cm',
          ),
          const ProfileAboutItemComplete(
            leading: 'Weight: ',
            title: '69 kg',
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
