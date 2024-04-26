import 'package:flutter/material.dart';

class CustomGradientTextWidget extends StatelessWidget {
  final TextStyle? style;
  final String text;

  const CustomGradientTextWidget({
    super.key,
    this.style,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(colors: [
        Color(0xff94783E),
        Color(0xffF3EDA6),
        Color(0xffF8FAE5),
        Color(0xffFFE2BE),
        Color(0xffD5BE88),
        Color(0xffF8FAE5),
        Color(0xffD5BE88),
      ]).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
