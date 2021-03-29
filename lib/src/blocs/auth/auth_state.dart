import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/user/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.unauthenticated() = _Unathenticated;
  const factory AuthState.authenticated({
    required User user,
  }) = Authenticated;
}
