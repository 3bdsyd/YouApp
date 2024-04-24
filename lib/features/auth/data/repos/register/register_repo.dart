abstract class RegisterRepo {
  Future postRegister({
    required String email,
    required String username,
    required String password,
  });
}
