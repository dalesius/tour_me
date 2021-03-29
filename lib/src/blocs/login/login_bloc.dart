import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/auth/auth_repository.dart';
import 'login_state.dart';

class LoginBloc extends StateNotifier<LoginState> {
  final AuthRepository authRepository;

  LoginBloc({required this.authRepository})
      : super(LoginState(email: '', password: ''));

  void emailChanged(value) {
    state = state.copyWith(email: value);
    print(state);
  }

  void passwordChanged(value) {
    state = state.copyWith(password: value);
  }

  void loginButtonPressed() async {
    final result = await authRepository.login(
        email: state.email, password: state.password);
    print(result);
    result.fold(
      (failure) {
        //TODO: update the state to show error message
      },
      (_) {},
    );
  }
}

final loginBloc = StateNotifierProvider<LoginBloc>((ref) {
  final authRepo = ref.watch(authRepository);
  return LoginBloc(authRepository: authRepo);
});
