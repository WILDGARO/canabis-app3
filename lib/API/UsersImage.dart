import 'dart:convert';

import 'package:flutter_application_3/API/Netword.dart';

class User {
  final int userID;
  final String username;
  final String image;

  final String email;

  User({
    required this.userID,
    required this.username,
    required this.email,
    required this.image,
  });

  static Future<User?> checkLogin(
      String name, String pass, String email) async {
    NetworkHelper networkHelper = NetworkHelper('my_app/UserImage.php', {});
    var json = await networkHelper.postData(jsonEncode(<String, String>{
      'Email': email,
      'Password': pass,

      
    }));
    if (json != null && json['error'] == false) {
      Map<String, dynamic> u = json['user'];
      User user = User(
        userID: int.parse(u["ID"]),
        username: u["Name"],
        email: u["Email"],
        image: u["image"],

      );
      return user;
    }
    return null;
  }
}
