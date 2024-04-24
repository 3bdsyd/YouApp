import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.back(),
      child: ListTile(
        minVerticalPadding: 27,
        contentPadding: const EdgeInsets.only(left: 18),
        minLeadingWidth: 0,
        leading: Assets.icons.back.svg(),
        title: const Text(
          'Back',
          style: TextStyles.style14,
        ),
      ),
    );
  }
}
