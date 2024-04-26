import 'package:flutter/material.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/shared/widgets/custom_gradient_text.dart';

class InterestTitleWidget extends StatelessWidget {
  const InterestTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomGradientTextWidget(
          text: 'Tell everyone about yourself',
          style: TextStyles.style14,
        ),
        SizedBox(height: 12),
        Text(
          'What interest you?',
          style: TextStyles.style20,
        ),
      ],
    );
  }
}
