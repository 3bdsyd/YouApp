import 'package:you_app/core/network/api_services.dart';
import 'package:you_app/core/utils/constant/app_api.dart';
import 'package:you_app/features/auth/data/repos/register/register_repo.dart';

class RegisterRepoImp extends RegisterRepo {
  @override
  Future postRegister({
    required String email,
    required String username,
    required String password,
  }) async {
    final result = await ApiServices().post(url: AppApi.register, data: {
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
