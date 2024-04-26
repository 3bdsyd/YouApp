import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:you_app/core/gen/assets.gen.dart';

BoxDecoration boxDecoration() => BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: Image(
          image: Svg(
            Assets.images.background.path,
          ),
        ).image,
      ),
    );
