import 'package:flutter/material.dart';
import 'package:flutter_application_3/API/LoginAPI.dart';
import 'package:flutter_application_3/Improve/Save.dart';
import 'package:flutter_application_3/Thenme.dart';
import 'package:flutter_application_3/UsersImage/UsersImage.dart';

class ProBar extends StatelessWidget {
  final User user;
  const ProBar(this.user);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: btnGoogleColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(user.username),
            accountEmail: Text(user.email),
            currentAccountPicture: CircleAvatar(
              backgroundColor: btnGoogleColor,
              child: ClipOval(
                child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://png.pngtree.com/thumb_back/fh260/background/20190820/pngtree-smoke-on-black-wooden-background-image_303743.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.save,
                color: Colors.white,
              ),
              title: Text("Save", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SaveImage()));
              }),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text("Settings", style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: Text(
              "Exit",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
