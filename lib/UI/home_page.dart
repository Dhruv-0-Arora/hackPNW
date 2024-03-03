import 'package:flutter/material.dart';
import 'package:hack_pnw/Core/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
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
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 45),
            alignment: Alignment.topCenter,
            child: Column(children: [
              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Papyrus", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Avenir Next LT Pro"),),
                  Image(image: AssetImage('assets/transparent_logo.png'), width: 80, height: 80),
                ],
              ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0),
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
          ],
          ),
          ),
          
      ),
    );
  }
}
