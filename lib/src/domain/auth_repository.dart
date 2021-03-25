import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/user/user_model.dart';
import '../services/api/auth_api.dart';

class AuthRepository {
  final AuthApi _authApi;

  AuthRepository({required authApi}) : _authApi = authApi;

  Future<User> login(
      {required String username, required String password}) async {
    final response =
        await _authApi.login(username: username, password: password);

    return User.fromJson(json: response);
  }

  Future<bool> logout() async {
    return await _authApi.logout();
  }
}

// Dependency Injection & Singleton
final authRepository = Provider<AuthRepository>((ref) {
  final service = ref.watch(authApi);
  return AuthRepository(authApi: service);
});
