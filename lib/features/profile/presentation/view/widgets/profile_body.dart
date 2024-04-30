import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/router/app_router.gr.dart';
import 'package:you_app/features/profile/presentation/manger/profile_cubit/profile_cubit.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_about_complete.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_card_empty.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_edit_about_card.dart';
import 'package:you_app/features/profile/presentation/view/widgets/profile_image.dart';
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
          child: Column(
            children: [
              const SizedBox(height: 50),
              CustomAppBarWidget(
                username: context.read<ProfileCubit>().profileData?.username,
                option: true,
              ),
              const SizedBox(height: 28),
              BlocBuilder<ProfileCubit, ProfileState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        const ProfileImageWidget(),
                        const SizedBox(height: 24),
                        Visibility(
                          visible: context
                                      .read<ProfileCubit>()
                                      .profileData
                                      ?.name ==
                                  null &&
                              !context.read<ProfileCubit>().getShowEditAbout,
                          child: ProfileCardEmptyWidget(
                            title: 'About',
                            text:
                                'Add in your your to help others know you better',
                            onTap: () {
                              context
                                  .read<ProfileCubit>()
                                  .setShowEditAbout(true);
                            },
                          ),
                        ),
                        Visibility(
                          visible:
                              context.read<ProfileCubit>().getShowEditAbout,
                          child: const ProfileEditAboutWidget(),
                        ),
                        Visibility(
                          visible: context
                                      .read<ProfileCubit>()
                                      .profileData
                                      ?.name !=
                                  null &&
                              !context.read<ProfileCubit>().getShowEditAbout,
                          child: const ProfileAboutCompleteWidget(),
                        ),
                        const SizedBox(height: 24),
                        Visibility(
                          visible:
                              context.read<ProfileCubit>().interestsItems.isEmpty,
                          child: ProfileCardEmptyWidget(
                            title: 'Interest',
                            text: 'Add in your interest to find a better match',
                            onTap: () {
                              context.router.push(const InterestRoute());
                            },
                          ),
                        ),
                        Visibility(
                          visible:
                              context.read<ProfileCubit>().interestsItems.isNotEmpty,
                          child: const ProfileInterestCompleteWidget(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
