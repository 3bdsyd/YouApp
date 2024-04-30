import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/manger/profile_cubit/profile_cubit.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.bottomLeft,
          height: 190,
          padding:
              const EdgeInsets.only(left: 13, right: 14, top: 8, bottom: 17),
          decoration: BoxDecoration(
            color: ColorName.mirage,
            borderRadius: BorderRadius.circular(16),
            image: context.read<ProfileCubit>().photoProfile != null
                ? DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.file(
                      File(context.read<ProfileCubit>().photoProfile!.path),
                    ).image,
                  )
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              context.read<ProfileCubit>().photoProfile == null
                  ? Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                          onTap: () =>
                              context.read<ProfileCubit>().getImageProfile(),
                          child: Assets.icons.edit.svg(),),
                    )
                  : const Text(''),
              Text(
                context.read<ProfileCubit>().profileData?.username ?? '',
                style: TextStyles.style16,
              ),
            ],
          ),
        );
      },
    );
  }
}
