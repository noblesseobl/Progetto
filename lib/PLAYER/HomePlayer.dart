import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:progetto/transition.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

import '../AggiustaSize.dart';

class HomePlayer extends StatefulWidget {
  const HomePlayer({super.key});

  @override
  State<HomePlayer> createState() => HomePlayerState();
}

String? dropdownValue = null;

class HomePlayerState extends State<HomePlayer> {
  List<String> list = <String>['Padel City', 'GPadel', 'Brangis'];

  String? get $dropdownValue => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade700,
            shadowColor: Colors.blueGrey,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Column(
                  children: [Icon(Icons.account_circle), Text("MyArea"), SizedBox(height: 5,)],
                ),
                Column(
                  children: [Icon(Icons.bar_chart_outlined), Text("Ranking"), SizedBox(height: 5,)],
                ),
                Column(
                  children: [
                    Icon(Icons.sports_tennis_outlined),
                    Text("Partite"), SizedBox(height: 5,)
                  ],
                ),
              ],
            ),
            title: const Text(
              'NOME APP!',
              textAlign: TextAlign.center,
            ),
          ),
          body: TabBarView(
            children: [
              //my area
              Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: SafeArea(
                      child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            backgroundImage: AssetImage('/account.png'),
                            radius: 80,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Mario Rossi",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Livello: intermedio ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Rank: 3.6",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Partite vinte: 24",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Partite perse: 4i5",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Partite giocate: 35",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Punti effettuati: 120",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ))),

              //ranking
              Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: SafeArea(
                      child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                              padding: getPadding(top: 11),
                              child: Text("Ranking",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30))),
                          Padding(
                              padding: getPadding(top: 10),
                              child: Text("Scegli un circolo: ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 140),
                            child: DropdownButton(
                                items: list!.map<DropdownMenuItem<String>>(
                                    (dynamic value) {
                                  return DropdownMenuItem<String>(
                                    child: Text(value),
                                    value: value.toString(),
                                  );
                                }).toList(),
                                value: dropdownValue,
                                isExpanded: true,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style:
                                    TextStyle(color: Colors.blueGrey.shade700),
                                underline: Container(
                                  width: 100,
                                  height: 2,
                                  color: Colors.blueGrey,
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    dropdownValue = value;
                                    print(dropdownValue);
                                  });
                                }),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          if (dropdownValue == null)
                            Column(
                              children: [
                                SizedBox(
                                  height: 38,
                                ),
                                Center(
                                    child:
                                        Text('Nessun circolo selezionato...'))
                              ],
                            )

                          else
                                for (int i = 0; i < 4; i++)
                                  Rank(i)
                        ],
                      ),
                    ),
                  ))),

              //partite
              Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: SafeArea(
                      child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            backgroundImage: AssetImage('/account.png'),
                            radius: 80,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Mario Rossi",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Livello: intermedio ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Rank: 3.6",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Partite vinte: 24",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Partite perse: 4i5",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Partite giocate: 35",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Punti effettuati: 120",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ))),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.black,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 6),
              child: GNav(
                backgroundColor: Colors.black87,
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.white24,
                padding: EdgeInsets.all(16),
                gap: 8,
                iconSize: 25,
                onTabChange: (index) async {
                  if (index == 1) {
                    await Future.delayed(const Duration(milliseconds: 100));
                  }
                },
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.sports_baseball_outlined,
                    text: 'Tornei',
                  ),
                  GButton(
                    icon: Icons.bar_chart_outlined,
                    text: 'Ranking Circolo',
                  ),
                  GButton(
                    icon: Icons.scoreboard,
                    text: 'Comunica Risultato',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Rank extends StatefulWidget {

  int i;

  Rank(this.i);

  @override
  _Rank createState() => _Rank(i);
}

class _Rank extends State<Rank> {

  int i;

  _Rank(this.i);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Column(
          children: [
            Material(
              elevation: 30,
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue.shade700,
              shadowColor: Colors.black,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                shadowColor: Colors.black26,
                color: Colors.blue.shade100,
                child: RoundedExpansionTile(
                    focusColor: Colors.blue.shade100,
                    tileColor: Colors.blue.shade700,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    title: Text("${i+1}\t\t\t\t\t\t${dropdownValue.toString()}",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.ptSerif(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blueGrey.shade200,
                        backgroundImage: AssetImage('/account.png'),
                        radius: 80,
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text.rich(
                            TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Partite giocate: 3 \nPartite perse: 23 \nPartite vinte: 5 \nPunti: 340',
                                  style: GoogleFonts.ptSerif(fontSize: 15,)
                              ),
                            ]),
                          )),),
                    ]),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ));
  }
}
