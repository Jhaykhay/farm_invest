import 'package:agro_investment/constants.dart';

class EmailValidator {
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return EMPTY_EMAIL_FIELD;
    }
    // Regex for email validation
    final regExp = RegExp(EMAIL_REGEX);
    if (regExp.hasMatch(value)) {
      return null;
    }
    return invalidEmailField;
  }
}

class PhoneNumberValidator {
  static String? validatePhoneNumber(String value) {
    print(value);
    if (value.isEmpty) {
      return EMPTY_TEXT_FIELD;
    }
    // Regex for phone number validation
    final regExp = RegExp(PHONE_NUMBER_REGEX);
    print(regExp.hasMatch(value));
    if (regExp.hasMatch(value)) {
      return null;
    }
    return INVALID_PHONE_NUMBER_FIELD;
  }
}

class PasswordValidator {
  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return EMPTY_PASSWORD_FIELD;
    }

    if (value.length < 6) {
      return PASSWORD_LENGTH_ERROR;
    }

    return null;
  }
}

// class UsernameValidator {
//   static String? validateUsername(String value) {
//       if (value.isEmpty) {
//         return emptyUsernameField;
//       }
//
//       if (value.length < 6) {
//         return usernameLengthError;
//       }
//
//
//     return null;
//   }
// }

class FieldValidator {
  static String? validateText(String value) {
    if (value.isEmpty) {
      return EMPTY_TEXT_FIELD;
    }

    return null;
  }
}
