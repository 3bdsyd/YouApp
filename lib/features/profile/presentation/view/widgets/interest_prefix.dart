import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/manger/profile_cubit/profile_cubit.dart';

class InterestPrefixWidget extends StatelessWidget {
  const InterestPrefixWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(right: 50, bottom: 8),
          child: Wrap(
            spacing: 5,
            children: context
                .read<ProfileCubit>()
                .interestsItems
                .map(
                  (e) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Chip(
                      color: MaterialStateColor.resolveWith(
                        (states) => Color(0xff334347),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(
                            color: Color(0xff334347),
                          )),
                      avatar: Text(
                        'X',
                        style: TextStyles.style12.copyWith(
                          color: ColorName.white,
                        ),
                      ),
                      label: Text(
                        e,
                        style: TextStyles.style12.copyWith(
                          color: ColorName.white,
                        ),
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
