
import 'package:flutter/material.dart';
import 'package:progetto/AggiustaSize.dart';

class recuperoPassword extends StatefulWidget {
  recuperoPassword();

  @override
  State<recuperoPassword> createState() => _recuperoPasswordState();
}

class _recuperoPasswordState extends State<recuperoPassword> {


  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade400,
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
                      child: Text("Welcome!",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ))),

                ]
            ),

          ),
        ),
      ),
    );
  }

  _recuperoPasswordState();
}
