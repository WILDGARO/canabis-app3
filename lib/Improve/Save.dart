import 'package:flutter/material.dart';
import 'package:flutter_application_3/API/UsersImage.dart';

import 'package:flutter_application_3/Thenme.dart';
import 'package:flutter_application_3/UsersImage/UsersImage.dart';

class SaveImage extends StatefulWidget {
  const SaveImage({super.key});

  @override
  State<SaveImage> createState() => _SaveImageState();
}

class _SaveImageState extends State<SaveImage> {
  @override
  String Name = "";
  String Password = "";
  String Email = "";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              style: interTextStyle.copyWith(
                color: whiteColor,
              ),
              onChanged: (value) {
                Email = value;
              },
              cursorColor: yellowColor,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: interTextStyle.copyWith(
                  color: greyColor,
                  fontSize: 14,
                  fontWeight: light,
                ),
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: greyColor,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: yellowColor),
                ),
                focusColor: yellowColor,
              ),
            ),
            TextFormField(
              style: interTextStyle.copyWith(
                color: whiteColor,
              ),
              onChanged: (value) {
                Password = value;
              },
              cursorColor: yellowColor,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: interTextStyle.copyWith(
                  color: greyColor,
                  fontSize: 14,
                  fontWeight: light,
                ),
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: greyColor,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: yellowColor),
                ),
                focusColor: yellowColor,
              ),
            ),
            TextButton(
                child: Text('OK'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () async {
                  User? u = await User.checkLogin(Name, Password, Email);
                  if (u != null) {
                    print("GO");
                    await showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text(''),
                              backgroundColor: Color.fromARGB(255, 0, 0, 0),
                              content: Text(
                                '  เข้าสู่ระบบ ',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20),
                              ),
                              actions: <Widget>[
                                TextButton(
                                    child: Text('Close'),
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.blue,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  UsersImage(u)));
                                    }),
                              ],
                            ));
                  }
                }),
          ],
        ),
      ),
    );
  }
}
