import 'package:flutter/material.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_card_empty.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_image_empty.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_interest_complete.dart';
import 'package:you_app/shared/widgets/custom_app_bar.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                const SizedBox(height: 50),
                const CustomAppBarWidget(
                  username: '@johndoe',
                  option: true,
                ),
                const SizedBox(height: 28),
                const ProfileImageEmptyWidget(),
                const SizedBox(height: 24),
                ProfileCardEmptyWidget(
                  title: 'About',
                  text: 'Add in your your to help others know you better',
                  onTap: () {},
                ),
                // const ProfileEditAboutWidget(),
                // const ProfileAboutCompleteWidget(),
                const SizedBox(height: 24),
                // ProfileCardEmptyWidget(
                //   title: 'Interest',
                //   text: 'Add in your interest to find a better match',
                //   onTap: () {},
                // ),
                const ProfileInterestCompleteWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
