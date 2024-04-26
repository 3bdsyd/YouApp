import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class ProfileAboutItemComplete extends StatelessWidget {
  final String leading;
  final String title;

  const ProfileAboutItemComplete({
    super.key,
    required this.leading,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      contentPadding: const EdgeInsets.all(0),
      horizontalTitleGap: 10,
      leading: Text(
        leading,
        style: TextStyles.style13.copyWith(
          color: ColorName.white.withOpacity(.33),
        ),
      ),
      title: Text(
        title,
        style: TextStyles.style13,
      ),
    );
  }
}
