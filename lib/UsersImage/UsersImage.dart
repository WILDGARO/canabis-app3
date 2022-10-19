import 'package:flutter/material.dart';
import 'package:flutter_application_3/API/UsersImage.dart';
import 'package:flutter_application_3/Thenme.dart';
import 'package:http/http.dart' as http;

class UsersImage extends StatefulWidget {
  final User user;
  const UsersImage(this.user);

  @override
  State<UsersImage> createState() => _UsersImageState();
}

class _UsersImageState extends State<UsersImage> {
  TextEditingController emailController = TextEditingController();
  // Future allImage() async {
  //   var uri = "http://192.168.203.189/my_app/UserImage1.php";
  //   //var request = await http.get(Uri.parse(uri));
  //   var request = await http.MultipartRequest('POST', Uri.parse(uri));
  //   request.fields['Email'] = emailController.text;

  //   //return json.decode(request.method);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(widget.user.email),
                Text(widget.user.image),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
