import 'package:formz/formz.dart';

enum EmailValidationError { empty, invaild }

String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([String value = '']) : super.dirty(value);
  static final _regex = RegExp(p);

  @override
  EmailValidationError? validator(String value) {
    if (_regex.hasMatch(value)) {
      return null;
    } else if (value.isEmpty) {
      return EmailValidationError.empty;
    } else {
      return EmailValidationError.invaild;
    }
  }

  static String? showEmailErrorMessage(EmailValidationError? error) {
    if (error == EmailValidationError.empty) {
      return "Empty email";
    } else if (error == EmailValidationError.invaild) {
      return "Invalid email";
    } else {
      return null;
    }
  }
}
