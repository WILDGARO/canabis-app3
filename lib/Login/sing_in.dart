import 'package:flutter/material.dart';
import 'package:flutter_application_3/API/LoginAPI.dart';
import 'package:flutter_application_3/Home/HomeTest.dart';
import 'package:flutter_application_3/Home/Home_page.dart';
import 'package:flutter_application_3/Home/Page1.dart';

import 'package:flutter_application_3/Login/sing_up.dart';
import 'package:flutter_application_3/Thenme.dart';

class Sing_in extends StatefulWidget {
  const Sing_in({super.key});

  @override
  State<Sing_in> createState() => _Sing_inState();
}

class _Sing_inState extends State<Sing_in> {
  bool isPassword = true;
  void togglePassword() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  @override
  String Name = "";
  String Password = "";
  String Email = "";
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/logo1.png'),
              )),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Welcome",
              style: interTextStyle.copyWith(
                color: whiteColor,
                fontSize: 20,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Sign In to Your Account',
              style: interTextStyle.copyWith(
                fontSize: 16,
                color: greyColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget NameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
        ),
        child: TextFormField(
          style: interTextStyle.copyWith(
            color: whiteColor,
          ),
          onChanged: (value) {
            Name = value;
          },
          cursorColor: yellowColor,
          decoration: InputDecoration(
            hintText: 'USERNAME',
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
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
        ),
        child: TextFormField(
          style: interTextStyle.copyWith(
            color: whiteColor,
          ),
          onChanged: (value) {
            Password = value;
          },
          cursorColor: yellowColor,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: interTextStyle.copyWith(
              color: greyColor,
              fontSize: 14,
              fontWeight: light,
            ),
            prefixIcon: const Icon(
              Icons.key_rounded,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              onPressed: togglePassword,
              icon: Icon(
                isPassword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: greyColor,
              ),
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
      );
    }

    Widget forgotPassword() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 16),
        child: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              'Forget Password?',
              style: interTextStyle.copyWith(
                color: yellowColor,
              ),
            ),
          ),
        ),
      );
    }

    Widget buttonSignIn() {
      return Container(
        margin: const EdgeInsets.only(
          top: 180,
        ),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () async {
                    if (Name == "") {
                      print("ว่าง");
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text(''),
                                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                                content: Text(
                                  '  ใส่ Nmae ',
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
                                        Navigator.pop(context);
                                      }),
                                ],
                              ));
                    } else if (Password == "") {
                      print("ว่าง");
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text(''),
                                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                                content: Text(
                                  '  Password ',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 253, 253, 253),
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
                                        Navigator.pop(context);
                                      }),
                                ],
                              ));
                    }
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
                                                    HomeTest()));
                                      }),
                                ],
                              ));
                    } else {
                      print("ว่าง");
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text(''),
                                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                                content: Text(
                                  '  ERROR ',
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
                                        Navigator.pop(context);
                                      }),
                                ],
                              ));
                    }
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  )),
            ],
          ),
        ),
      );
    }

    Widget dontHaveAccount() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont Have Account? ',
              style: interTextStyle.copyWith(
                color: whiteColor,
                fontWeight: light,
              ),
            ),
            GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Sing_up())));
              },
              child: Text(
                'Sign Up',
                style: interTextStyle.copyWith(
                  color: yellowColor,
                  fontWeight: light,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          header(),
          NameInput(),
          passwordInput(),
          forgotPassword(),
          buttonSignIn(),
          dontHaveAccount(),
        ],
      ),
    );
  }
}
