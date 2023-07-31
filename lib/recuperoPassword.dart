
import 'package:flutter/material.dart';
import 'package:progetto/AggiustaSize.dart';

class recuperoPassword extends StatefulWidget {
  recuperoPassword();

  @override
  State<recuperoPassword> createState() => _recuperoPasswordState();
}

class _recuperoPasswordState extends State<recuperoPassword> {



  String username="";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    bool inviato=false;
    return Scaffold(
      backgroundColor: Colors.pink.shade300,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(

          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 41, top: 49, right: 41, bottom: 49),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Padding(
                      padding: getPadding(top: 11),
                      child: Text("Inserisci la tua mail",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ))),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration:BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.only(left: 20),

                        child: TextFormField(
                          onChanged: (String value) {
                            username=value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value) ){
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username'
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }

                      //chiamata http
                      //gestione risposta
                      //cambia route

                    }, child: Text("Invia"),
                  ),


                  SizedBox(height: 20,),

                  Visibility(
                    visible: inviato,
                    child: Text("Username o password errati",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            backgroundColor: Colors.white70,
                            fontWeight: FontWeight.bold)),
                  ),

                ]
            ),

          ),
        ),
      ),
    );
  }

  _recuperoPasswordState();
}
