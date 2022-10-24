import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Early_N_Def extends StatefulWidget {
  final File file;
  const Early_N_Def(this.file);

  @override
  State<Early_N_Def> createState() => _Early_N_DefState();
}

class _Early_N_DefState extends State<Early_N_Def> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      appBar: AppBar(),
=======
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 73, 211, 84),
      ),
      
>>>>>>> 1dae66e9f0ff2744674d04045764afec2a8dd781
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
<<<<<<< HEAD
            children: <Widget>[
              SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.file(
                    widget.file,
                  ))
=======
            children: [ 
                 SizedBox(
                   child: Image.file(
                      widget.file,
                      width: 500,
                      height: 500,
                    ),
                 ),
                 Container(
                  child: Text("Hello",style: TextStyle(fontSize: 50,color: Colors.black),),
                 )
>>>>>>> 1dae66e9f0ff2744674d04045764afec2a8dd781
            ],
          ),
        ),
      ),
    );
  }
}
