import 'package:flutter/material.dart';

class MyRegistroPage2 extends StatelessWidget {
  const MyRegistroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 175, 129),
      body: Stack(
        children: [
          _backgroundCover(context),
          _boxForm(context),
        ],
      ),
    );
  }

  Widget _boxForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _textYourForm(),
          _textFieldName(),
          _textFieldLastName(),
          _textFieldPhone(),
          _textFieldEmail(),
          _textFielPassword(),
          _textFielConfirmPassword(),
          _buttonRegistrar(context), // Cambiado el nombre del método
        ],
      ),
    );
  }

  Widget _buttonRegistrar(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: ElevatedButton(
        onPressed: () {
          _mostrarMensajeRegistro();
        },
        child: Text(
          "Registrar",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }

  void _mostrarMensajeRegistro() {
    print("¡Usuario registrado!"); // Mensaje en la consola
  }

  Widget _textYourForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Text(
        "Complete para registrar",
        style: TextStyle(
            fontFamily: "kanit",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 92, 40, 0)),
      ),
    );
  }

  Widget _textFieldName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "Nombre", prefixIcon: Icon(Icons.person_outline)),
      ),
    );
  }

  Widget _textFieldLastName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "Apellido", prefixIcon: Icon(Icons.person_outline)),
      ),
    );
  }

  Widget _textFieldPhone() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "Telefono", prefixIcon: Icon(Icons.call_outlined)),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "Correo electronico",
            prefixIcon: Icon(Icons.email_outlined)),
      ),
    );
  }

  Widget _textField() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "Correo electronico",
            prefixIcon: Icon(Icons.email_outlined)),
      ),
    );
  }

  Widget _textFielPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Contraseña", prefixIcon: Icon(Icons.lock_outline)),
      ),
    );
  }

  Widget _textFielConfirmPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Contraseña", prefixIcon: Icon(Icons.lock_outline)),
      ),
    );
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.50,
      color: Color.fromARGB(255, 136, 59, 0),
    );
  }
}
