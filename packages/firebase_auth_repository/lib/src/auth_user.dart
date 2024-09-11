import 'package:equatable/equatable.dart';

class AuthUser extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final bool emailVerified;
  final String? imageUrl;
  final String? phoneNumber;
  const AuthUser({
    required this.id,
    this.email,
    this.name,
    this.imageUrl,
    this.phoneNumber,
    this.emailVerified = false,
  });
  static const empty = AuthUser(id: '');
  bool get isEmpty => this == AuthUser.empty;

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        emailVerified,
        imageUrl,
        phoneNumber,
      ];
}
