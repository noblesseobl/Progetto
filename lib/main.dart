import 'package:flutter/material.dart';
import 'package:progetto/transition.dart';

import 'CIRCOLO/LoginCircolo.dart';
import 'PLAYER/LoginPlayer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Hello(),
    );
  }
}

class Hello extends StatelessWidget {
  Hello();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //altre cazzate di benvenut
                  Container(
                    margin: EdgeInsets.fromLTRB(0,0,0,20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(CustomPageRoute(
                            child: LoginCircolo(),
                            direction:AxisDirection.up),);
                        print("ciao");
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22))
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient:
                            const LinearGradient(colors: [Color(0xfff0d7c5), Colors.white]),
                            borderRadius: BorderRadius.circular(22)),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          child: const Text(
                              'Login Circolo',
                              style: TextStyle(fontSize: 20,fontFamily: 'Poppins', color: Colors.black)
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0,0,0,0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(CustomPageRoute(
                            child: LoginPlayer(),
                            direction:AxisDirection.up),);
                        print('Arrivederci');
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22))),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient:
                            const LinearGradient(colors: [Colors.purple, Color(0xff3F005C)]),
                            borderRadius: BorderRadius.circular(22)),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          child: const Text(
                              'Login Giocatore',
                              style: TextStyle(fontSize: 20,fontFamily: 'Poppins')
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
