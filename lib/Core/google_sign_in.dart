import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class GoogleSignInProvider extends ChangeNotifier {
  // creating instance of google Signin
  final googleSignIn = GoogleSignIn();

  // creating the user variable
  GoogleSignInAccount? _user;
  // getting the account of the user
  GoogleSignInAccount get user => _user!;

  // every time executed when button clicked
  Future googleLogin() async {
    // selected user account
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    // getting the authentication details
    final googleAuth = await googleUser.authentication;

    // getting the credential
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    // signing in with the credential
    await FirebaseAuth.instance.signInWithCredential(credential);

    // updating the UI
    notifyListeners();
  }

  bool isCurrentUser() {
    return _user != null;
  }

  // logging out the user
  Future googleLogout() async {
    await googleSignIn.disconnect();
    await FirebaseAuth.instance.signOut();
    _user = null;
    notifyListeners();
  }
}
