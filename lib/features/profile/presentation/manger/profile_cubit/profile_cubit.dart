import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:you_app/core/helper/failures_handling.dart';
import 'package:you_app/core/helper/shared_preferences.dart';
import 'package:you_app/features/profile/data/models/profile_model.dart';
import 'package:you_app/features/profile/data/repos/profile_repo_imp.dart';
import 'package:you_app/shared/widgets/custom_crop_image.dart';
import 'package:you_app/shared/widgets/custom_snack_bar.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  final ProfileRepoImp _profileRepoImp = ProfileRepoImp();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController horoscopeController = TextEditingController();
  final TextEditingController zodiacController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  TextEditingController interestsController = TextEditingController();

  List<String> interestsItems = [];

  bool _showEditAbout = false;
  Data? profileData;
  void splitInterests() {
    if (interestsController.text.contains(' ')) {
      interestsItems.add(interestsController.text.split(r' ')[0]);
      interestsItems.removeWhere((element) => element.isEmpty);
      interestsController = TextEditingController(text: '\n');
    }
    emit(ProfileInitial());
  }

  Future<void> getProfile() async {
    emit(ProfileLoading());

    await _profileRepoImp.getProfile().then((status) {
      if (status is Failures) {
        scaffoldMessengerKey.currentState
            ?.showSnackBar(customSnackBar(text: status.errMessage));
      } else if (status is ProfileModel) {
        profileData = status.data;
        scaffoldMessengerKey.currentState
            ?.showSnackBar(customSnackBar(text: status.message));
        if (profileData?.name != null) {
          nameController.text = profileData!.name!;
          horoscopeController.text = profileData!.horoscope ?? '';
          zodiacController.text = profileData!.zodiac ?? '';
          birthdayController.text = profileData!.birthday!;
          heightController.text = profileData!.height!.toString();
          weightController.text = profileData!.weight!.toString();
        }
      }
      emit(ProfileInitial());
    });
  }

  Future<bool> galleryPermissions() async {
    bool isDeniedGallery = true;

    DeviceInfoPlugin plugin = DeviceInfoPlugin();

    AndroidDeviceInfo android = await plugin.androidInfo;

    if (android.version.sdkInt < 33) {
      if (await Permission.storage.request().isGranted) {
        isDeniedGallery = false;
      } else if (await Permission.storage.request().isPermanentlyDenied) {
        await openAppSettings();
      } else if (await Permission.storage.request().isDenied) {
        isDeniedGallery = true;
      }
    } else {
      if (await Permission.photos.request().isGranted) {
        isDeniedGallery = false;
      } else if (await Permission.photos.request().isPermanentlyDenied) {
        await openAppSettings();
      } else if (await Permission.photos.request().isDenied) {
        isDeniedGallery = true;
      }
    }
    return isDeniedGallery;
  }

  XFile? photoProfile;
  XFile? newPhotoProfile;

  void getImageProfile() async {
    if (await galleryPermissions()) return;
    newPhotoProfile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (newPhotoProfile != null) {
      photoProfile = newPhotoProfile;
      final File? croppedFile = await imageCropper(photoProfile!.path);
      if (croppedFile != null) {
        photoProfile = XFile(croppedFile.path);
        SharedPref.setString('photoProfile', photoProfile!.path);
      } else {
        photoProfile = null;
      }
      emit(ProfileInitial());
    }
  }

  void initImage() {
    photoProfile = XFile(SharedPref.getString('photoProfile')!);
  }

  bool get getShowEditAbout {
    return _showEditAbout;
  }

  void setShowEditAbout(bool showEditAbout) {
    _showEditAbout = showEditAbout;
    emit(ProfileInitial());
  }

  Future<void> editProfile() async {
    if (!globalKey.currentState!.validate()) return;

    final Map<String, dynamic> data = {
      'name': nameController.text.trim(),
      'birthday': birthdayController.text.trim(),
      'horoscope': horoscopeController.text.trim(),
      'height': double.parse(heightController.text.trim()),
      'weight': double.parse(weightController.text.trim()),
      "interests": ["string"],
    };
    debugPrint('data: ${data}');
    if (profileData?.name == null) {
      await _profileRepoImp.postProfile(data).then((status) {
        if (status is Failures) {
          scaffoldMessengerKey.currentState
              ?.showSnackBar(customSnackBar(text: status.errMessage));
        } else if (status is ProfileModel) {
          profileData = status.data;
          _showEditAbout = false;
          scaffoldMessengerKey.currentState
              ?.showSnackBar(customSnackBar(text: status.message));
        }
      });
    } else {
      await _profileRepoImp.putProfile(data).then((status) {
        if (status is Failures) {
          scaffoldMessengerKey.currentState
              ?.showSnackBar(customSnackBar(text: status.errMessage));
        } else if (status is ProfileModel) {
          profileData = status.data;
          scaffoldMessengerKey.currentState
              ?.showSnackBar(customSnackBar(text: status.message));
        }
      });
    }
    emit(ProfileInitial());
  }
}
