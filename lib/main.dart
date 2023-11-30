import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:panalavista_definitivo/pages/pestanas_de_logeo/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pan a la vista',
      theme: ThemeData(
        primaryColor: Colors.brown,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromARGB(255, 152, 50, 13),
          onPrimary: Color.fromARGB(255, 255, 255, 255),
          secondary: Color.fromARGB(255, 255, 255, 255),
          onSecondary: Colors.brown,
          error: Colors.blueGrey,
          onError: Colors.blueGrey,
          background: Colors.blueGrey,
          onBackground: Colors.blueGrey,
          surface: Colors.blueGrey,
          onSurface: Colors.blueGrey,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyLogeoPage(),
    );
  }
}
