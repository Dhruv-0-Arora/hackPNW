import 'package:flutter/material.dart';
import 'package:hack_pnw/Core/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container (
          padding: const EdgeInsets.fromLTRB(40, 150, 40, 150),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Constants.primary,
                Constants.secondary,
              ],
            ),
          ),
          
      ),
    ),
    );
  }
}
