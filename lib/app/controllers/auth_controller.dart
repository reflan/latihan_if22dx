import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void signup() {}
  void login(String email, String password) {}
  void logout() {}
  void resetPassword() {}
}
