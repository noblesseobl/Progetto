import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:progetto/transition.dart';



class HomePlayer extends StatefulWidget {
  const HomePlayer({super.key});

  @override
  State<HomePlayer> createState() => HomePlayerState();
}


class HomePlayerState extends State<HomePlayer> {

  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String? dropdownValue=null;
  String? get $dropdownValue => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,


      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Column(
                  children: [
                    Icon(Icons.account_circle),
                    Text("MyArea")
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.bar_chart_outlined),
                      Text("Ranking")
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.sports_tennis_outlined),
                    Text("Partite")
                  ],
                ),

              ],
            ),
            title: const Text('NOME APP!',
              textAlign: TextAlign.center,
            ),
          ),





          body: const TabBarView(
              children: [

                //my area
                Scaffold(
                    resizeToAvoidBottomInset: false,
                  body:SafeArea(child:
                      Center(
                        child:  SingleChildScrollView(

                          child: Column(
                            children: [

                              SizedBox(height: 30,),

                              CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                backgroundImage: AssetImage('/account.png'),
                                radius: 80,
                              ),

                              SizedBox(height: 30,),
                              Text("Mario Rossi",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Livello: intermedio ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              SizedBox(height: 10,),
                              Text("Rank: 3.6",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Partite vinte: 24",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Partite perse: 4i5",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Partite giocate: 35",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Punti effettuati: 120",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),

                            ],
                          ),
                        ),
                      )
                  )
                ),


                //ranking
                Scaffold(
                    resizeToAvoidBottomInset: false,
                  body:SafeArea(child:
                      Center(
                        child:  SingleChildScrollView(

                          child: Column(
                            children: [
                              SizedBox(height: 30,)
                            ],
                          ),
                        ),
                      )
                  )
                ),

                //partite
                Scaffold(
                    resizeToAvoidBottomInset: false,
                  body:SafeArea(child:
                      Center(
                        child:  SingleChildScrollView(

                          child: Column(
                            children: [

                              SizedBox(height: 30,),

                              CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                backgroundImage: AssetImage('/account.png'),
                                radius: 80,
                              ),

                              SizedBox(height: 30,),
                              Text("Mario Rossi",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Livello: intermedio ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              SizedBox(height: 10,),
                              Text("Rank: 3.6",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Partite vinte: 24",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Partite perse: 4i5",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Partite giocate: 35",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),
                              Text("Punti effettuati: 120",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              SizedBox(height: 10,),

                            ],
                          ),
                        ),
                      )
                  )
                ),



              ],

          ),





          bottomNavigationBar: Container(
            color:Colors.black,
            child:Padding(
              padding:const EdgeInsets.symmetric(horizontal: 15.0,vertical:6),
              child: GNav(
                backgroundColor: Colors.black87,
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.white24,
                padding: EdgeInsets.all(16),
                gap:8, iconSize: 25,
                onTabChange: (index) async {
                  if(index==1){
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