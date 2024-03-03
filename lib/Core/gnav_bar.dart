import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hack_pnw/Core/gnav_bar_controller.dart';

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
          backgroundColor: Colors.white,
          tabBackgroundColor: Colors.black,
          tabBorderRadius: 20,
          tabMargin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          onTabChange: (value) {
            _controller.index.value = value;
          },
          tabs: const [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.upload, text: 'Upload'),
            GButton(icon: Icons.search, text: 'Discover'),
            GButton(icon: Icons.settings, text: 'Settings'),
            /*GButton(icon: Icons.perm_media_outlined, text: 'Home'),
            GButton(icon: Icons.playlist_add, text: 'Upload'),
            GButton(icon: Icons.ondemand_video_outlined, text: 'Discover'),
            GButton(icon: Icons.settings, text: 'Settings')*/
          ],
        ),
        body: Obx(
          () => _controller.pages[_controller.index.value],
        ));
  }
}
