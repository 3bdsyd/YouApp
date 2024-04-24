import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

SnackBar customSnackBar({required String text}) => SnackBar(
      content: Text(
        text,
        style: TextStyles.style13,
      ),
      showCloseIcon: true,
      backgroundColor: ColorName.plantation,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(20),
      elevation: 5,
      clipBehavior: Clip.hardEdge,
      dismissDirection: DismissDirection.startToEnd,
      duration: const Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
