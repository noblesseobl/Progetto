import 'package:flutter/material.dart';
import 'package:progetto/transition.dart';

import 'AggiustaSize.dart';
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
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('/palleracchetta.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6),
                    BlendMode.lighten
                )

            )
        ),
        padding: const EdgeInsets.all(16.0),
        child:  Center(
          child: Column(


            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [


              SizedBox(height: 50),

              Stack(
                alignment: Alignment.center,
                children: [


              Padding(
                  padding: getPadding(top: 11),
                  child: Text("NOME APP!",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        letterSpacing: 7,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3
                          ..color = Colors.black,
                      ))),
              // Implement the stroke

              Padding(
                  padding: getPadding(top: 11),
                  child: Text("NOME APP!",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        letterSpacing: 7,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ))),

            ],),


              SizedBox(height: 200),


              //altre robe
              Container(

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      CustomPageRoute(
                        child: LoginCircolo(),
                        direction:AxisDirection.up),);
                    print("ciao");
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        ),
                        gradient:
                        const LinearGradient(
                            colors: [Colors.blue,
                              Color(0xff1b44bf)]
                        ),

                        borderRadius: BorderRadius.circular(25)),
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

              SizedBox(height: 30),

              Container(

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
                          borderRadius: BorderRadius.circular(25))),
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1
                        ),
                        gradient:
                            const LinearGradient(colors: [Colors.purple,
                              Color(0xff3F005C)]),
                        borderRadius: BorderRadius.circular(25)),
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
      ),
    );
  }
}
