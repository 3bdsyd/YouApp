import 'package:flutter/material.dart';
import 'package:you_app/features/profile/presentation/view/widgets/interest_title.dart';
import 'package:you_app/shared/widgets/custom_app_bar.dart';
import 'package:you_app/shared/widgets/custom_form_field.dart';

class InterestBodyWidget extends StatelessWidget {
  const InterestBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const CustomAppBarWidget(),
          const SizedBox(height: 73),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: InterestTitleWidget(),
          ),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CustomFormFieldWidget(
              controller: TextEditingController(),
              validator: (value) {},
              hintText: '',
            ),
          ),
        ],
      ),
    );
  }
}
