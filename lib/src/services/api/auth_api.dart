import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthApi {
  Future<Map<String, dynamic>> login({
    required String username,
    required String password,
  }) async {
    await Future.delayed(Duration(seconds: 2));
    print('Logged in as $username');
    return {
      'username': 'Dali',
      'token': 'SDGFDA2345TGt4F4V%7REERR',
      'authorization': 'Tour operator'
    };
  }

  Future<bool> logout() async {
    await Future.delayed(Duration(seconds: 2));
    print('Logged out');
    return true;
  }
}

// Singleton
final authApi = Provider((_) => AuthApi());
