import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  onTap,
      child: Container(
        alignment: Alignment.center,
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorName.downy,
              ColorName.havelockBlue,
            ],
          ),
        ),
        child: Text(
          text,
          style: TextStyles.style16,
        ),
      ),
    );
  }
}
