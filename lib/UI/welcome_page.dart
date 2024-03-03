import 'package:flutter/material.dart';
import 'package:hack_pnw/Core/constants.dart';
import 'package:hack_pnw/Core/gnav_bar.dart';
import 'package:hack_pnw/Core/google_sign_in.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
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
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.5)),
            //color: Constants.tertiary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(
                  flex: 2,
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(35, 0, 15, 0),
                    child: const Image(
                      image: AssetImage('assets/transparent_logo.png'),
                    )),
                const Spacer(),
                const Text(
                  'Welcome to Papyrus',
                  style: TextStyle(fontFamily: 'Oswald', fontSize: 25),
                ),
                const Spacer(),
                ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Constants.primary,
                                minimumSize: const Size(220, 45),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 8),

                            // text of button
                            label: const Text(
                              'Sign In with Google',
                              style: TextStyle(
                                fontFamily: 'Product Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            // icon of button
                            icon: const Icon(Icons.login),

                            // functionality
                            onPressed: () async {
                              final provider =
                                  Provider.of<GoogleSignInProvider>(context,
                                      listen: false);
                              await provider.googleLogin();

                              // check if login was successful
                              if (provider.isCurrentUser() == false) {
                                return;
                              }
                              
                              // ignore: use_build_context_synchronously
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const GoogleNavBar(),
                                ),
                              );
                                                        },
                          ),
                /*const SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.logo_dev),
                        Spacer(),
                        Text('Login in with Apple')
                      ],
                    ),
                  ),
                ),*/
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
