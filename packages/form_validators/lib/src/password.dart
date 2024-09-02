import 'package:formz/formz.dart';

enum PasswordValidation { empty, inavild }

class Password extends FormzInput<String, PasswordValidation> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidation? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidation.empty;
    } else if (value.length < 6) {
      return PasswordValidation.inavild;
    } else {
      return null;
    }
  }

  static String? showPaswordErrorMessage(PasswordValidation? error) {
    if (error == PasswordValidation.empty) {
      return "Password empty";
    }
    if (error == PasswordValidation.inavild) {
      return "Too short password";
    } else {
      return null;
    }
  }
}
