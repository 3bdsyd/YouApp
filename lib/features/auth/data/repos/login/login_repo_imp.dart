import 'package:you_app/core/network/api_services.dart';
import 'package:you_app/core/utils/constant/app_api.dart';
import 'package:you_app/features/auth/data/repos/login/login_repo.dart';

class LoginRepoImp extends LoginRepo {
  @override
  Future postLogin({
    required String email,
    required String username,
    required String password,
  }) async {
    final result = await ApiServices().post(url: AppApi.login, data: {
      'email': email,
      'username': username,
      'password': password,
    });
    return result.fold(
      (failure) => failure,
      (succuss) => succuss,
    );
  }
}
