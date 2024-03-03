import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hack_pnw/Core/gnav_bar.dart';
import 'package:hack_pnw/Core/google_sign_in.dart';
import 'package:hack_pnw/UI/welcome_page.dart';

import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final googleUser = await GoogleSignIn().signInSilently();
  if (googleUser != null) {
    // If the user is already signed in, navigate to the homepage
    runApp(const MyApp(homePage: GoogleNavBar()));
  } else {
    // If the user is not signed in, show the welcome page
    runApp(const MyApp(homePage: WelcomePage()));
  }
}

class MyApp extends StatelessWidget {
  final Widget homePage;

  const MyApp({super.key, required this.homePage});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Papyrus",
        home: homePage,
      ));
}
