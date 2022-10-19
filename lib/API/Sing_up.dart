import 'dart:convert';

import 'package:flutter_application_3/API/Netword.dart';





class User {
  final int userID;
  final String username;
  final String email;
 

  User({
    required this.userID,
    required this.username,
    required this.email,
  
  });

  static Future<User?> checkLogin(String name, String pass,String email) async {
    NetworkHelper networkHelper = NetworkHelper('my_app/SingupAI.php', {});
    var json = await networkHelper.postData(jsonEncode(<String, String>{
      'Email': email,
      'Name': name,
      'Password': pass,
      
    }));
   
  }
}
