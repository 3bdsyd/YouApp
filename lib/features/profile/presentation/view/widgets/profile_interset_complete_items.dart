import 'package:flutter/material.dart';
import 'package:you_app/core/gen/colors.gen.dart';
import 'package:you_app/core/styles/text_styles.dart';

class ProfileInterestCompleteItemsWidget extends StatelessWidget {
  ProfileInterestCompleteItemsWidget({super.key});
  final List<String> items = ['Music', 'Basketball', 'Fitness', 'Gumming'];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 12,
      spacing: 12,
      children: items
          .map((tags) => Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width / 2,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: _boxDecoration(),
                child: Text(
                  tags,
                  style: TextStyles.style14,
                  overflow: TextOverflow.ellipsis,
                ),
              ))
          .toList(),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: ColorName.white.withOpacity(.06),
      );
}
