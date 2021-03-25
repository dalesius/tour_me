import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/auth_repository.dart';
import 'auth_state.dart';

class AuthBloc extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({required authRepository})
      : _authRepository = authRepository,
        super(AuthState.unauthenticated(password: '', username: ''));

  Future<void> loginButtonPressed(
      {required String username, required String password}) async {
    state = AuthState.loading();
    final result =
        await _authRepository.login(username: username, password: password);
    result.authorization != ''
        ? state = AuthState.authenticated(user: result)
        : state = AuthState.unauthenticated(
            password: password,
            username: username,
            errorMessage: result.authorization);
  }

  usernameChanged(String newValue) {
    state.maybeMap(
      unauthenticated: (value) {
        state = value.copyWith(
            username: newValue,
            errorMessage: newValue.length >= 10
                ? 'Username must be shorter than 10 characters'
                : null);
      },
      orElse: () {},
    );
  }

  passwordChanged(String newValue) {
    state.maybeMap(
      unauthenticated: (value) {
        state = value.copyWith(
            password: newValue,
            errorMessage: newValue.length >= 10
                ? 'Password must be shorter than 10 characters'
                : null);
      },
      orElse: () {},
    );
  }
}

// Dependency Injection & Singleton
final authBlocProvider = StateNotifierProvider<AuthBloc>((ref) {
  final authRepo = ref.watch(authRepository);
  return AuthBloc(authRepository: authRepo);
});
