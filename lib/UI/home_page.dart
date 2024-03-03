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

              // scrolling pane
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text("Welcome to Papyrus", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Avenir Next LT Pro"),),
                      const SizedBox(height: 20),
                      const Text("Papyrus is a platform for students to share and access notes, study guides, and other educational resources. We aim to make learning more accessible and efficient for everyone.", style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Avenir Next LT Pro"),),
                      const SizedBox(height: 20),
                      const Text("Get started by uploading your own notes or searching for resources.", style: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Avenir Next LT Pro"),),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/upload');
                        },
                        child: const Text("Upload Notes", style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "Avenir Next LT Pro"),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/search');
                        },
                        child: const Text("Search Resources", style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "Avenir Next LT Pro"),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ),
          
      ),
    );
  }
}
