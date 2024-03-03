import 'package:flutter/material.dart';
import 'package:hack_pnw/Core/constants.dart';
import 'package:hack_pnw/UI/upload_page.dart';

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
          child: Container( //Name and logo in top bar
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 45),
            alignment: Alignment.topCenter,
            child: Column(children: [

              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Papyrus", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: "Avenir Next LT Pro"),),
                  Image(image: AssetImage('assets/transparent_logo.png'), width: 80, height: 80),
                ],
              ),

              Container( //Line and drop shadow in top bar
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //Boxes for the saved videos
                      children: <Widget>[
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            // Open YT video
                            print('Opening YouTube video: videoLink');
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        'title',
                                        style: TextStyle(fontFamily: 'Oswald', fontSize: 35),
                                      ),
                                      Text(
                                        'link',
                                        style: TextStyle(fontFamily: 'Oswald', fontSize: 25),
                                      ),
                                      Icon(Icons.reset_tv_outlined, size: 40, color: Colors.red),
                                      SizedBox(width: 10),
                                      Text('Watch Video'), 
                                    ]
                                  ),
                                 ), 

                              ],
                            ),
                          ),
                        ),
                        //button to move to upload page
                        SizedBox(height: 20,),
                        ElevatedButton(
                          onPressed: () {
                            //move to upload page
                          },
                          style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Constants.quaternary),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: const Text("Upload Video",  style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "Oswald"),),
                        ),                        
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
