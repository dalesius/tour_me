import 'package:email_validator/email_validator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/auth/auth_repository.dart';
import 'login_state.dart';

class LoginBloc extends StateNotifier<LoginState> {
  final AuthRepository authRepository;

  LoginBloc({required this.authRepository})
      : super(LoginState(email: '', password: '', hasSubmitted: false));

  void emailChanged(value) {
    final isValid = !state.hasSubmitted || EmailValidator.validate(value);
    state = state.copyWith(
        email: value,
        emailError: isValid ? null : 'Please enter a valid email!');
  }

  void passwordChanged(value) {
    final isValid = !state.hasSubmitted || value.length > 5;
    state = state.copyWith(
        password: value,
        passwordError: isValid
            ? null
            : 'The length of the password should be at least 6 characters.');
  }

  void loginButtonPressed() async {
    final result = await authRepository.login(
        email: state.email, password: state.password);

    result.fold(
      (failure) {
        state = state.copyWith(hasSubmitted: true);
      },
      (_) {},
    );
  }

  void registerButtonPressed() async {
    final result = await authRepository.login(
        email: state.email, password: state.password);

    result.fold(
      (failure) {
        state = state.copyWith(hasSubmitted: true);
      },
      (_) {},
    );
  }
}

final loginBloc = StateNotifierProvider<LoginBloc>((ref) {
  final authRepo = ref.watch(authRepository);
  return LoginBloc(authRepository: authRepo);
});
