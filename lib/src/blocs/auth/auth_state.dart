import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tour_me/src/models/user/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;

  const factory AuthState.unauthenticated({
    required String username,
    required String password,
    String? errorMessage,
  }) = _Unauthenticated;

  const factory AuthState.authenticated({required User user}) = _Authenticated;
}
