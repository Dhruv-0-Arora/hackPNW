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
        bottomNavigationBar: GNav(
          activeColor: Colors.green,
          color: Colors.grey,
          backgroundColor: Constants.secondary,
          tabBackgroundColor: Colors.black,
          tabBorderRadius: 20,
          tabMargin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
        body: Obx(
          () => _controller.pages[_controller.index.value],
        ));
  }
}
