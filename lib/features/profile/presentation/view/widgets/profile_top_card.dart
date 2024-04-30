import 'package:flutter/material.dart';
import 'package:you_app/core/styles/text_styles.dart';

class ProfileTopCardWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Widget actionIcon;
  const ProfileTopCardWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.actionIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.style14,
        ),
        InkWell(
          onTap: onTap,
          child: actionIcon,
        ),
      ],
    );
  }
}
