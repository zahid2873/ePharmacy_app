// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'user.freezed.dart';
// part 'user.g.dart';
// @freezed
// abstract class UserModel with _$UserModel {
//  const factory User({
//     required String uid,
//     String? name,
//     String? email,
//     String? profileImg,
//     @Default(false) bool? isAdmin,
//   }) = _UserModel;
//     factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String uid,
    String? name,
    String? email,
    String? profileImg,
    String? phoneBumber,
    String? gender,
    @JsonKey(fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp) Timestamp? timestamp,
    @Default(false) bool? isAdmin,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

// Conversion functions for Timestamp <-> DateTime
Timestamp? _fromJsonTimestamp(dynamic json) {
  return json != null ? (json as Timestamp) : null;
}

dynamic _toJsonTimestamp(Timestamp? timestamp) {
  return timestamp;
}
