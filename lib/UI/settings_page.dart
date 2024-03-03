import 'package:flutter/material.dart';
import 'package:hack_pnw/Core/constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  // final user = FirebaseAuth.instance.currentUser;
  // final userProfilePictureUrl = user?.photoURL ?? '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20),
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: const Center(
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Constants.secondary,
                    fontFamily: 'ProductSans',
                    shadows: [
                      Shadow(
                        blurRadius: 2.0,
                        color: Color.fromARGB(87, 0, 0, 0),
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          pinned: true,
          expandedHeight: 200,
          backgroundColor: Constants.primary, 
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Constants.primary,
                      width: 5,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(101, 0, 0, 0),
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ),
                    ]), // TODO: fix this
                // child: Material(
                //   elevation: 20,
                //   shape: const CircleBorder(),
                //   clipBehavior: Clip.antiAlias,
                //   child: CircleAvatar(
                //     radius: 100,
                //     backgroundImage: NetworkImage(userProfilePictureUrl),
                //     backgroundColor: Colors.transparent,
                //     foregroundColor: Colors.white,
                //   ),
                // ),
              ),
              const SizedBox(height: 20),
              // Center(
              //   child: Text(
              //     user?.displayName ?? '',
              //     style: const TextStyle(
              //         fontSize: 24,
              //         fontWeight: FontWeight.bold,
              //         color: Constants.primary,
              //         fontFamily: 'ProductSans',
              //         shadows: [
              //           Shadow(
              //             blurRadius: 3.0,
              //             color: Color.fromARGB(87, 0, 0, 0),
              //             offset: Offset(2, 2),
              //           ),
              //         ]),
              //   ),
              // ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'ProductSans',
                      height: 2,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "Welcome to Papyrus, the ultimate study tool for students. ",
                      ),
                      TextSpan(
                        text: "Be at YOUR best. ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            "Being studying today with Papyrus and see the difference in your productivity and focus!",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // ElevatedButton.icon(
              //   onPressed: () {
              //     final provider =
              //         Provider.of<GoogleSignInProvider>(context, listen: false);
              //     provider.googleLogout();

              //     // navigate to welcome page
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return const WelcomePage();
              //     }));
              //   },
              //   style: ElevatedButton.styleFrom(
              //       backgroundColor: Constants.primary,
              //       minimumSize: const Size(180, 45),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       elevation: 8),
              //   label: const Text('Logout',
              //       style: TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white,
              //         fontFamily: 'ProductSans',
              //       )),
              //   icon: const Icon(Icons.logout),
              // ),
              const SizedBox(height: 20),
            ],
          ),
        ),

        // Title for "Privacy Statement"
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "Privacy Statement",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'ProductSans',
                ),
              ),
            ),
          ),
        ),

        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "At Papyrus, we take your privacy very seriously. We understand that your personal information is important to you, and we want you to know that it is equally important to us. We are committed to protecting your privacy and ensuring that your personal information is handled in a safe and responsible manner. We adhere to the highest standards of data protection and privacy laws, and we are constantly reviewing and updating our policies and procedures to ensure that we are always in compliance with the latest regulations. We believe that privacy is not just a legal requirement, but a fundamental human right, and we are dedicated to upholding that right for all of our users. Rest assured that when you use our services, your privacy is our biggest stress, and we will do everything in our power to keep your personal information safe and secure.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: 'ProductSans',
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
