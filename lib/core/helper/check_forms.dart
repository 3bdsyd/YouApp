import 'package:you_app/core/utils/constant/app_regular_expressions.dart';

class CheckForms {
  static bool checkEmailRegex(String value) {
    final regex = RegExp(
      AppRegularExpressions.emailRegExp,
      caseSensitive: false,
    );
    return regex.hasMatch(value);
  }

  static bool checkUsernameRegex(String value) {
    final regex = RegExp(
      AppRegularExpressions.usernameRegExp,
      caseSensitive: false,
    );
    return regex.hasMatch(value);
  }

  static bool checkPasswordRegex(String value) {
    final regex = RegExp(
      AppRegularExpressions.passwordRegExp,
      caseSensitive: false,
    );
    return regex.hasMatch(value);
  }

  static bool checkEmpty(String value) {
    if (value.isEmpty) return false;
    return true;
  }
}
