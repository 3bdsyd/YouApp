import 'package:flutter/material.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_interset_complete_items.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_top_card.dart';

class ProfileInterestCompleteWidget extends StatelessWidget {
  const ProfileInterestCompleteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 27, right: 14),
            child: ProfileTopCardWidget(
              title: 'Interest',
              onTap: () {},
              actionIcon: Assets.icons.edit.svg(),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: ProfileInterestCompleteItemsWidget(),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        color: ColorName.aztec,
        borderRadius: BorderRadius.circular(14),
      );
}
