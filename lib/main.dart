import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Duration initialDelay = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DelayedDisplay(
                  delay: initialDelay,
                  child: Image.asset('images/ressources_relationnelles.png', height: 200,)
                ),
               
                SizedBox(
                  height: 50,
                ),

                DelayedDisplay(
                  delay: Duration(seconds: initialDelay.inSeconds + 1),
                  child: Text('Bienvenue !', style: TextStyle(
                    color: Color(0xFF03989E),
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),)
                ),

                SizedBox(
                  height: 50,
                ),

                DelayedDisplay(
                  delay: Duration(seconds: initialDelay.inSeconds + 2),
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff03989E),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "S'inscrire",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
               DelayedDisplay(
                  delay: Duration(seconds: initialDelay.inSeconds + 2),
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff03989E),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Se connecter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                DelayedDisplay(
                  delay: Duration(seconds: initialDelay.inSeconds + 3),
                  child: Container(
                    width: 300,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color(0xff03989E),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Se connecter en tant qu'Anonyme",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}