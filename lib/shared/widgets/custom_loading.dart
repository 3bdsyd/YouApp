import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';

class CustomLoadingWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;

  const CustomLoadingWidget({
    super.key,
     this.height,
     this.width,
     this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? double.infinity,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Text(''),
    ).redacted(
      context: context,
      redact: true,
      configuration: RedactedConfiguration(
        animationDuration: const Duration(
          milliseconds: 800,
        ), //default
      ),
    );
  }
}
