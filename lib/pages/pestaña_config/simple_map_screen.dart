import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/pesta%C3%B1a_config/Sinple_chat/app_theme.dart';

class Mypart extends StatelessWidget {
  const Mypart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yes no app',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 6).theme(),
      home: Scaffold(
      
  appBar: AppBar(
        title: Text("Ir a panaderias"),
        backgroundColor: Color.fromARGB(150, 21, 216, 118),
    ),
    body: Center(
      child: FilledButton.tonal(
        onPressed: (){ }, 
        child: Text('tocame')),
    ),
));  }
}
