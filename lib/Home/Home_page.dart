// import 'package:flutter/material.dart';
// import 'package:flutter_application_3/API/LoginAPI.dart';
// import 'package:flutter_application_3/Home/LogOut.dart';
// import 'package:flutter_application_3/Home/Page1.dart';
// import 'package:flutter_application_3/Home/ProBar.dart';
// import 'package:flutter_application_3/Home/profile.dart';

// import 'package:flutter_application_3/Thenme.dart';

// class Home_page extends StatefulWidget {
//   const Home_page({super.key});

//   @override
//   State<Home_page> createState() => _Home_pageState();
// }

// class _Home_pageState extends State<Home_page> {
//   int _HomeIndex = 0;
//   List<Widget> body = const [
//     const HomePage1(),
//     const ProFile(),
//     const LogOut(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     
//       body: body[_HomeIndex],
//       backgroundColor: Color.fromARGB(95, 60, 60, 60),
//       bottomNavigationBar: NavigationBarTheme(
//         data: NavigationBarThemeData(
//             indicatorColor: Color.fromARGB(255, 92, 92, 93)),
//         child: NavigationBar(
//           backgroundColor: Colors.black12,
//           animationDuration: const Duration(seconds: 3),
//           labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
//           height: 50,
//           selectedIndex: _HomeIndex,
//           onDestinationSelected: (value) {
//             setState(() {
//               _HomeIndex = value;
//             });
//           },
//           destinations: const [
//             NavigationDestination(
//                 label: "Home",
//                 icon: Icon(
//                   Icons.home,
//                   color: greyColor,
//                 )),
//             NavigationDestination(
//                 label: "person",
//                 icon: Icon(
//                   Icons.person,
//                   color: greyColor,
//                 )),
//             NavigationDestination(
//                 label: "logout",
//                 icon: Icon(
//                   Icons.logout,
//                   color: greyColor,
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }
