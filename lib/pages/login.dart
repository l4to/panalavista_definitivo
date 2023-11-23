import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/Inicio2.dart';

class MyLoginDeInicio extends StatelessWidget {
  const MyLoginDeInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 160, 95),
      body: _Formulario(context),
    );
  }
}

Widget _Formulario(BuildContext context) {
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _imagen(),
          SizedBox(height: 15),
          _titulo(),
          _campoUsuario(),
          _campoContrasena(),
          SizedBox(height: 15),
          _botonEnviar(context), // Pasa el contexto aquí
        ],
      ),
    ),
  );
}

Widget _imagen() {
  return Image(
    width: 200,
    image: AssetImage("assets/images/logo.jpg"),
  );
}

Widget _titulo() {
  return Text(
    "INICIE SESION",
    style: TextStyle(
        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
  );
}

Widget _campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Usuario", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget _campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Contraseña", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget _botonEnviar(BuildContext context) {
  return TextButton(
    style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 136, 59, 0),
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MyLogeo(),
      ));
    },
    child: Text(
      "Entrar",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
}
