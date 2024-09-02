import 'package:formz/formz.dart';

enum NameValidation { empty, ivalid }

class Name extends FormzInput<String, NameValidation> {
  const Name.pure() : super.pure('');
  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  NameValidation? validator(String value) {
    if (value.isEmpty) {
      return NameValidation.empty;
    } else if (value.length < 3) {
      return NameValidation.ivalid;
    } else {
      return null;
    }
  }

  static String? showNameErrorMessage(NameValidation? error) {
    if (error == NameValidation.empty) {
      return "Empty name";
    } else if (error == NameValidation.ivalid) {
      return "Too short name";
    } else {
      return null;
    }
  }
}
