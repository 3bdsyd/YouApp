import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:you_app/core/gen/assets.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/shared/widgets/custom_loading.dart';

class ProfileLoadingWidget extends StatelessWidget {
  const ProfileLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
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
                const CustomLoadingWidget(
                  width: 30,
                  height: 10,
                ),
                const Spacer(),
                Visibility(
                  child: Assets.icons.option.svg(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          const CustomLoadingWidget(
            height: 190,
          ),
          const SizedBox(height: 24),
          const CustomLoadingWidget(
            height: 100,
          ),
          const SizedBox(height: 24),
          const CustomLoadingWidget(
            height: 100,
          ),
        ],
      ),
    );
  }
}
