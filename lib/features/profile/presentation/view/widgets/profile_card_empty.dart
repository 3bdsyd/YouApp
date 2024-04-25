import 'package:flutter/material.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_top_card.dart';

class ProfileCardEmptyWidget extends StatelessWidget {
  final String title;
  final String text;
  final Function onTap;
  const ProfileCardEmptyWidget({
    super.key,
    required this.text,
    required this.title,
    required this.onTap,
  });

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
            title: title,
            onTap: () => onTap,
            actionIcon: Assets.icons.edit.svg(),
          ),
          const SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(right: 38),
            child: Text(
              text,
              style: TextStyles.style14.copyWith(
                fontWeight: FontWeight.w500,
                color: ColorName.white.withOpacity(.5),
              ),
            ),
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
