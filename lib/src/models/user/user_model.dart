import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String username, required String authorization}) = _User;

  factory User.fromJson({required Map<String, dynamic> json}) =>
      _$UserFromJson(json);
}
