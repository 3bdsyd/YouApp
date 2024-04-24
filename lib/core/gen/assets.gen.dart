/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back.svg
  SvgGenImage get back => const SvgGenImage('assets/icons/back.svg');

  /// File path: assets/icons/down_arrow.svg
  SvgGenImage get downArrow => const SvgGenImage('assets/icons/down_arrow.svg');

  /// File path: assets/icons/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/edit.svg');

  /// File path: assets/icons/hidden_eye.svg
  SvgGenImage get hiddenEye => const SvgGenImage('assets/icons/hidden_eye.svg');

  /// File path: assets/icons/male.svg
  SvgGenImage get male => const SvgGenImage('assets/icons/male.svg');

  /// File path: assets/icons/option.svg
  SvgGenImage get option => const SvgGenImage('assets/icons/option.svg');

  /// File path: assets/icons/union.svg
  SvgGenImage get union => const SvgGenImage('assets/icons/union.svg');

  /// File path: assets/icons/zodiac.svg
  SvgGenImage get zodiac => const SvgGenImage('assets/icons/zodiac.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [back, downArrow, edit, hiddenEye, male, option, union, zodiac];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.svg
  SvgGenImage get background =>
      const SvgGenImage('assets/images/background.svg');

  /// List of all assets
  List<SvgGenImage> get values => [background];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
