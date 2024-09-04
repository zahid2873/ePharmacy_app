import 'package:equatable/equatable.dart';
import 'package:form_validators/form_validators.dart';

class ForgetPasswordState extends Equatable {
  final Email email;
  final FormzStatus status;
  final String? errorMessage;

  const ForgetPasswordState(
      {this.email = const Email.pure(),
      this.status = FormzStatus.pure,
      this.errorMessage});
  ForgetPasswordState copyWith({
    Email? email,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return ForgetPasswordState(
      email: email ?? this.email,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [email, status, errorMessage];
}
