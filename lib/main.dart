import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Home/HomeTest.dart';
import 'package:flutter_application_3/Home/Page1.dart';
import 'package:flutter_application_3/Home/intro_screens/start.dart';

import 'package:flutter_application_3/Image/Image.dart';
import 'package:flutter_application_3/treatscreen/AllTreat.dart';

import 'Class/Early_N_Def.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('th')],
      path: 'assets/lang',
      fallbackLocale: Locale('th'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const AllTreat(),
        '//': (context) => AllTreat(),
      },
    );
  }
}
