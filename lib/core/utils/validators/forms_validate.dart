import 'package:you_app/core/helper/check_forms.dart';

class FormsValidate {
  static String? getEmptyValidate(String email) {
    if (!CheckForms.checkEmpty(email)) return 'Field is required *';

    return null;
  }

  static String? getEmailValidate(String email) {
    if (!CheckForms.checkEmpty(email)) return 'Field is required *';

    if (!CheckForms.checkEmailRegex(email)) return 'Email is Invalid';

    return null;
  }

  static String? getUsernameValidate(String username) {
    if (!CheckForms.checkEmpty(username)) return 'Field is required *';

    if (!CheckForms.checkUsernameRegex(username)) return 'Username is Invalid';

    return null;
  }

  static String? getPasswordValidate(String password) {
    if (!CheckForms.checkEmpty(password)) return 'Field is required *';

    if (password.length < 8) {
      return 'The password must be more than 8 characters';
    }

    if (!CheckForms.checkPasswordRegex(password)) return 'Password is Invalid';

    return null;
  }

  static String? getPasswordConfirmationValidate(
    String password,
    String passwordConfirmation,
  ) {
    if (!CheckForms.checkEmpty(password)) return 'Field is required *';

    if (password != passwordConfirmation) {
      return 'Password does not match';
    }

    return null;
  }
}
