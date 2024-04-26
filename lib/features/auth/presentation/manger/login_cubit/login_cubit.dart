import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_app/core/helper/check_forms.dart';
import 'package:you_app/core/helper/failures_handling.dart';
import 'package:you_app/core/helper/shared_preferences.dart';
import 'package:you_app/core/router/app_router.dart';
import 'package:you_app/core/router/app_router.gr.dart';
import 'package:you_app/core/utils/constant/app_key.dart';
import 'package:you_app/features/auth/data/repos/login/login_repo_imp.dart';
import 'package:you_app/shared/widgets/custom_snack_bar.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final LoginRepoImp loginRepo = LoginRepoImp();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isEmail = false;

  Future login() async {

    if (!formKey.currentState!.validate()) return;

    emit(LoginLoading());

    isEmail = CheckForms.checkEmailRegex(emailController.text);
    await loginRepo
        .postLogin(
      email: isEmail ? emailController.text.trim() : '',
      username: !isEmail ? emailController.text.trim() : '',
      password: passwordController.text.trim(),
    )
        .then(
      (status) {
        if (status is Failures) {
          scaffoldMessengerKey.currentState!
              .showSnackBar(customSnackBar(text: status.errMessage));
        } else if (status is Map) {
          if (status.containsKey('access_token')) {
            SharedPref.setString(
              AppKey.userToken,
              status['access_token'],
            );
            AppRouter().push(const ProfileRoute());
          }
          scaffoldMessengerKey.currentState!
              .showSnackBar(customSnackBar(text: status['message']));
          emit(LoginSuccuss());
        }
      },
    );
    emit(LoginInitial());
  }

  bool _isShowPassword = true;

  bool get getShowPassword => _isShowPassword;

  void setShowPassword(bool isShowPassword) {
    _isShowPassword = !isShowPassword;
    emit(LoginInitial());
  }
}
