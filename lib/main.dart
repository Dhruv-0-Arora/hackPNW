import 'package:flutter/material.dart';
import 'package:hack_pnw/Core/gnav_bar.dart';
import 'package:hack_pnw/UI/test_page.dart';
import 'package:hack_pnw/UI/welcome_page.dart';
import 'package:hack_pnw/Core/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Papyrus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //
        //colorScheme: ColorScheme.fromSeed(seedColor: Constants.primary),
        useMaterial3: true,
      ),
      home: const GoogleNavBar(), // TODO: implement firebase
    );
  }
}
