import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Home/Page1.dart';

class Healthyt_N extends StatefulWidget {
  final File file;
  const Healthyt_N(this.file);

  @override
  State<Healthyt_N> createState() => _Healthyt_NState();
}

class _Healthyt_NState extends State<Healthyt_N> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 73, 211, 84),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.file(
                  widget.file,
                  width: 500,
                  height: 500,
                ),
              ),
              Container(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage1()));
              }, child: Text('กลับไปยังหน้าแรก',style: TextStyle(color: Colors.black,fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}
