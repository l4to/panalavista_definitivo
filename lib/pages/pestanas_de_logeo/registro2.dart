import 'package:flutter/material.dart';

class MyRegistroPage2 extends StatelessWidget {
  const MyRegistroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
      ),
      backgroundColor: Color.fromARGB(255, 216, 175, 129),
      body: Stack(children: [
        _backgroundCover(context),
        _boxForm(context),
      ]),
    );
  }
}

Widget _boxForm(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.55,
    margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.25, left: 50, right: 50),
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 216, 200, 159),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black, blurRadius: 10, offset: Offset(0, 0.5))
        ]),
    child: SingleChildScrollView(
      child: Column(children: [
        _textYourForm(),
        _textFieldName(),
        _textFieldLastName(),
        _textFieldPhone(),
        _textFieldEmail(),
        _textFielPassword(),
        _textFielConfirmPassword(),
        _buttonLogin()
      ]),
    ),
  );
}

Widget _buttonLogin() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
    child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Registrar",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        )),
  );
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
