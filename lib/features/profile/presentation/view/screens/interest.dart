import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:you_app/core/styles/text_styles.dart';
import 'package:you_app/features/profile/presentation/view/widgets/interest_body.dart';
import 'package:you_app/shared/widgets/custom_image_background.dart';

@RoutePage()
class InterestScreen extends StatelessWidget {
  const InterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: boxDecoration(),
        child: const InterestBodyWidget(),
      ),
    );
  }
}
