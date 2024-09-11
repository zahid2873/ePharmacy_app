import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpWithEmailAndPasswordFailure implements Exception {
  final String code;
  SignUpWithEmailAndPasswordFailure(this.code);
}

class SignInWithEmailAndPasswordFailure implements Exception {
  final String code;
  SignInWithEmailAndPasswordFailure(this.code);
}

class ForgetPasswordFailure implements Exception {
  final String coed;
  ForgetPasswordFailure(this.coed);
}

class SignInWithGoogleFailure implements Exception {}

class SignOutFailure implements Exception {}

class AuthenticationRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn.standard();

  Stream<AuthUser> get user {
    return _firebaseAuth.authStateChanges().map(
      (firebaseUser) {
        return firebaseUser == null
            ? AuthUser.empty
            : AuthUser(
                id: firebaseUser.uid,
                name: firebaseUser.displayName,
                email: firebaseUser.email,
                imageUrl: firebaseUser.photoURL,
                emailVerified: firebaseUser.emailVerified,
                phoneNumber: firebaseUser.phoneNumber,
              );
      },
    );
  }

  Future<void> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SignUpWithEmailAndPasswordFailure(e.code);
    }
  }

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SignInWithEmailAndPasswordFailure(e.code);
    }
  }

  Future<void> forgetPassword({required email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw ForgetPasswordFailure(e.code);
    }
  }

  Future<bool?> signInWithGoogle() async {
    try {
      final googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount == null) {
        throw SignInWithGoogleFailure();
      }
      final googleSignInAuth = await googleSignInAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuth.accessToken,
        idToken: googleSignInAuth.idToken,
      );
      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      return userCredential.additionalUserInfo?.isNewUser;
    } on FirebaseAuthException catch (_) {
      throw SignInWithGoogleFailure();
    }
  }

  Future<void> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } catch (e) {
      throw SignOutFailure();
    }
  }
}
