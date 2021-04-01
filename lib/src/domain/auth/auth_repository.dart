import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tour_me/src/models/auth/auth_failure.dart';
import 'package:tour_me/src/services/api/auth_api.dart';

import '../../models/user/user_model.dart';

class AuthRepository {
  final firebase_auth.FirebaseAuth _authApi;

  AuthRepository({
    required firebase_auth.FirebaseAuth authApi,
  }) : _authApi = authApi;

  Future<Either<AuthFailure, User>> register(
    String email,
    String password,
  ) async {
    try {
      final userCredential = await _authApi.createUserWithEmailAndPassword(
          email: email, password: password);
      final firebaseUser = userCredential.user;
      if (firebaseUser == null) {
        return left(GeneralAuthFailure());
      }
      return right(User(
        userId: firebaseUser.email!,
      ));
    } catch (e) {
      print('Error');
      print(e);
      return left(GeneralAuthFailure());
    }
  }

  Future<Either<AuthFailure, User>> login({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _authApi.signInWithEmailAndPassword(
          email: email, password: password);
      final firebaseUser = userCredential.user;
      print('firebaseUser: ');
      print(firebaseUser);
      if (firebaseUser == null) {
        return left(GeneralAuthFailure());
      }
      return right(User(
        userId: firebaseUser.email!,
      ));
    } catch (e) {
      print(e);
      return left(GeneralAuthFailure());
    }
  }

  Future<Either<AuthFailure, Unit>> logout() async {
    try {
      await _authApi.signOut();
      return right(unit);
    } catch (_) {
      return left(GeneralAuthFailure());
    }
  }

  Stream<User?> authStateChanges() {
    return _authApi
        .authStateChanges()
        .map((user) => user == null ? null : User(userId: user.email!));
  }
}

// Dependency Injection & Singleton
final authRepository = Provider<AuthRepository>((ref) {
  final service = ref.watch(firebaseAuthApi);
  return AuthRepository(authApi: service);
});
