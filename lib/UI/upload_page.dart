import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hack_pnw/Core/constants.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

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
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //needs to be higher to allow space for buttons below
              const Text(
                
                'Upload URL',
                style: TextStyle(fontFamily: 'Oswald', fontSize: 25),
              )
            ],
            ),
        ),
      ),
    );
  }
}
