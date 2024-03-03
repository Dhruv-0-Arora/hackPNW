import 'package:flutter/material.dart';
import 'package:hack_pnw/Core/constants.dart';

/*class Welcome extends StatelessWidget {
  const Welcome({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}*/

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  /*int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),*/
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
                    image: NetworkImage(
                        'https://cdn.discordapp.com/attachments/1210124560926646332/1213755312943665172/image.png?ex=65f6a0b9&is=65e42bb9&hm=5e67480b3845597a52795291495538f21f3e40bd34a13db43fe00649f7810073&'),
                  ),
                ),
                const Spacer(),
                const Text(
                  'Welcome to Papyrus',
                  style: TextStyle(fontFamily: 'Oswald', fontSize: 25),
                ),
                const Spacer(),
                const SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        //backgroundColor: Colors.blueAccent,
                        ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.logo_dev),
                        Spacer(),
                        Text('Login in with Google')
                      ],
                    ),
                  ),
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
