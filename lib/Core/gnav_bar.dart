import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBar extends StatelessWidget {
  const GoogleNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: GNav(
          activeColor: Colors.green,
          color: Colors.grey,
          backgroundColor: Colors.white,
          tabBackgroundColor: Colors.black,
          tabBorderRadius: 20,
          tabMargin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          onTabChange: (value) {
            print(value);
          },
          tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.search, text: 'Search'),
            GButton(icon: Icons.person, text: 'Profile')
          ],
        ),
        body: Text("Dhruv"));
  }
}
