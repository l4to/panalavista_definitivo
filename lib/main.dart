import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/Inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const MyHomePage(),
    );
  }
}
