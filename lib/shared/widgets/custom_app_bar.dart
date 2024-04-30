import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String? username;
  final bool? option;
  const CustomAppBarWidget({
    super.key,
    this.username,
    this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          Assets.icons.back.svg(),
          const SizedBox(width: 10),
          InkWell(
            onTap: () => context.router.back(),
            child: const Text(
              'Back',
              style: TextStyles.style14,
            ),
          ),
          const Spacer(),
          Visibility(
            visible: username == null ? false : true,
            child: Text(
              username ?? '',
              style: TextStyles.style14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const Spacer(),
          Visibility(
            visible: option ?? false,
            child: Assets.icons.option.svg(),
          ),
        ],
      ),
    );
  }
}
