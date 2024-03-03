import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hack_pnw/Core/constants.dart';
import 'package:hack_pnw/UI/view_page.dart';

class UploadPage extends StatelessWidget {
  UploadPage({super.key});

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  // function to create a new video object
  void handleUpload(BuildContext context) {

    // if either of them are empty then return
    if (_controller.text.isEmpty || _controller2.text.isEmpty) {
      return;
    }

    // send the user to the viewer page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewPage(
          videoURL: _controller2.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Papyrus",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Avenir Next LT Pro"),
                  ),
                  Image(
                      image: AssetImage('assets/transparent_logo.png'),
                      width: 80,
                      height: 80),
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
              Expanded(
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // text for the upload page in black
                        Text(
                          "Upload URL",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Avenir Next LT Pro"),
                        ),
                        SizedBox(height: 20),

                        // field for the Youtube link with the text "Enter Youtube Title"
                        TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Enter title',
                          ),
                          onSubmitted: (value) => {
                            handleUpload(context),
                          },
                        ),

                        SizedBox(height: 20),

                        // field for the Youtube link with the text "Enter Youtube link"
                        TextField(
                          controller: _controller2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Enter Youtube link',
                          ),
                          onSubmitted: (value) => {
                            handleUpload(context),
                          },
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
