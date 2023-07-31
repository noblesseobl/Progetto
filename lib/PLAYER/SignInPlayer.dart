import 'dart:io';

import 'package:flutter/material.dart';
import 'package:progetto/AggiustaSize.dart';
import 'package:image_picker/image_picker.dart';

class SignInPlayer extends StatefulWidget {
   SignInPlayer();

  @override
  State<SignInPlayer> createState() => _SignInPlayerState();
}


class _SignInPlayerState extends State<SignInPlayer> {


  String username="";
  String password="";
  String password2="";

  File ? imageFile;

  String nome="";
  String cognome="";

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(

              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 41, top: 49, right: 41, bottom: 49),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [


                    //Scritta registrazione

                    Padding(
                        padding: getPadding(top: 11),
                        child: Text("Registrazione",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ))),

                    //image picker

                    ElevatedButton(
                      onPressed: () {
                        _getFromCamera();
                      },
                      child: Text("PICK FROM CAMERA"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _getFromGallery();
                      },
                      child: Text("PICK FROM GALLERY"),
                    ),

                    //nome

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
                              nome=value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Nome'
                            ),
                          ),
                        ),
                      ),
                    ),

                    //cognome

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
                              cognome=value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Cognome'
                            ),
                          ),
                        ),
                      ),
                    ),

                    //email

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
                                hintText: 'Email'
                            ),
                          ),
                        ),
                      ),
                    ),

                    //password?

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
                            obscureText: true,
                            onChanged: (String value) {
                              password=value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password'
                            ),
                          ),
                        ),
                      ),
                    ),

                    //verifica password????

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
                            obscureText: true,
                            onChanged: (String value) {
                              password2=value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }else if(password!=password2){
                                return 'Le password non corrispondono';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password'
                            ),
                          ),
                        ),
                      ),
                    ),

                    //genere  (dropdown)

                    //livello (dropdown)

                    //circoli ???????




                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _getFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  _getFromCamera() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

}


