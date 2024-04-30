import 'dart:io';

import 'package:image_cropper/image_cropper.dart';

Future<File?> imageCropper(final String photoProfile) =>
    ImageCropper().cropImage(
      sourcePath: photoProfile,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
    );
