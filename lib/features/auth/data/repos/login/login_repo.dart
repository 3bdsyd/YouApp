abstract class LoginRepo {
  Future postLogin({
    required String email,
    required String username,
    required String password,
  });
}
