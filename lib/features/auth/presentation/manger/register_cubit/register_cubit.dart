import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/helper/failures_handling.dart';
import 'package:you_app/core/helper/shared_preferences.dart';
import 'package:you_app/core/utils/constant/app_key.dart';
import 'package:you_app/features/auth/data/repos/register/register_repo_imp.dart';
import 'package:you_app/shared/widgets/custom_snack_bar.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final RegisterRepoImp registerRepo = RegisterRepoImp();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  Future register() async {
    if (!formKey.currentState!.validate()) return;

    emit(RegisterLoading());

    await registerRepo
        .postRegister(
      email: emailController.text.trim(),
      username: usernameController.text.trim(),
      password: passwordController.text.trim(),
    )
        .then(
      (status) async {
        if (status is Failures) {
          scaffoldMessengerKey.currentState!
              .showSnackBar(customSnackBar(text: status.errMessage));
        } else if (status is Map) {
          SharedPref.setString(AppKey.userToken, "");

          log(' status["token"]: ${status['token']}');
          scaffoldMessengerKey.currentState!
              .showSnackBar(customSnackBar(text: status['message']));
          emit(RegisterSuccuss());
        }
      },
    );
    emit(RegisterInitial());
  }

  bool _isShowPassword = true;

  void setShowPassword(bool isShowPassword) {
    _isShowPassword = !isShowPassword;
    emit(RegisterInitial());
  }

  bool get getShowPassword {
    return _isShowPassword;
  }

  bool _isShowPasswordConfirmation = true;

  void setShowPasswordConfirmation(bool isShowPasswordConfirmation) {
    _isShowPasswordConfirmation = !isShowPasswordConfirmation;
    emit(RegisterInitial());
  }

  bool get getShowPasswordConfirmation {
    return _isShowPasswordConfirmation;
  }
}
