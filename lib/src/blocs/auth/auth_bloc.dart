import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/auth/auth_repository.dart';
import '../../models/user/user_model.dart';
import 'auth_state.dart';

class AuthBloc extends StateNotifier<AuthState> {
  final AuthState authState;
  AuthBloc({required this.authState}) : super(authState);
}

// Dependency Injection & Singleton
final authChangesProvider = StreamProvider<User?>((ref) {
  final authRepo = ref.watch(authRepository);
  return authRepo.authStateChanges();
});

final authBlocProvider = StateNotifierProvider<AuthBloc>((ref) {
  final user = ref.watch(authChangesProvider);
  return user.when(
    data: (data) => AuthBloc(
        authState: data == null
            ? AuthState.unauthenticated()
            : AuthState.authenticated(user: data)),
    loading: () => AuthBloc(authState: AuthState.loading()),
    error: (_, __) => AuthBloc(authState: AuthState.unauthenticated()),
  );
});
