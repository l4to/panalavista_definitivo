

import 'package:flutter/material.dart';
const Color _custonColor = Color(0xFFA6669A9);

const List<Color> _colorThemes =[
  _custonColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme{
  final int selectedColor;
   
   AppTheme({
    this.selectedColor = 0
   }) : assert(
    selectedColor >= 0 && selectedColor <= _colorThemes.length-1 ,
    'no devbe se menor o igual a cero');   

  ThemeData theme(){
    return ThemeData( useMaterial3: true,
    colorSchemeSeed : _colorThemes[selectedColor],
    );
  }
  
}