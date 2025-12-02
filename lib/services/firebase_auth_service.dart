import 'package:firebase_auth/firebase_auth.dart';
import '../models/dance_user.dart';
import '../repositories/user_repository.dart';

class FirebaseAuthService {
  FirebaseAuthService(this._auth, this._userRepository);

  final FirebaseAuth _auth;
  final UserRepository _userRepository;

  Stream<User?> get authChanges => _auth.authStateChanges();

  Future<void> signUpWithEmail(
    String email,
    String password,
    String name,
  ) async {
    final cred = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final user = DanceUser(
      id: cred.user!.uid,
      email: email,
      name: name,
      avatarUrl: '',
    );

    await _userRepository.saveUser(user);
  }

  Future<void> signInWithEmail(String email, String password) {
    return _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() => _auth.signOut();
}
