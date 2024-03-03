import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hack_pnw/Core/gnav_bar_controller.dart';
import 'package:hack_pnw/Core/constants.dart';

class GoogleNavBar extends StatelessWidget {
  const GoogleNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavigationBarController _controller =
        Get.put(BottomNavigationBarController());

    return Scaffold(
        bottomNavigationBar: 
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration( // Shadow and designing of the google nav bar
              color: Constants.secondary,
              boxShadow: [
                BoxShadow(
                  blurRadius: 7,
                  spreadRadius: 5,
                  color: Colors.black.withOpacity(.1),
                  offset: const Offset(0, -3)
                )
              ]
              
            ),
            child: GNav(
              //Icon colors of pages in use/not in use
              activeColor: Colors.black,
              color: Colors.grey,
              //Navbar matches color of page background
              backgroundColor: Constants.secondary,
              //Marker for currently selected page 
              tabBackgroundColor: const Color.fromARGB(70, 255, 255, 255),
              tabBorderRadius: 20,
              tabMargin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              //Calling gnav_bar_controller.dart when user changes page
              onTabChange: (value) {
                _controller.index.value = value;
              },
              tabs: const [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.upload, text: 'Upload'),
                GButton(icon: Icons.search, text: 'Discover'),
                GButton(icon: Icons.settings, text: 'Settings')
              ],
            ),
          ),
        body: Obx(
          () => _controller.pages[_controller.index.value],
        ));
  }
}
