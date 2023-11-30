import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/pestanas_de_logeo/registro2.dart';

class MyLogeoPage extends StatelessWidget {
  const MyLogeoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _textNoTengoCuenta(context),
      ),
      backgroundColor: Color.fromARGB(255, 216, 175, 129),
      body: Stack(children: [
        _backgroundCover(context),
        _boxForm(context),
        Column(children: [_imageCover(), _slogan()])
      ]),
    );
  }
}

Widget _boxForm(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.35,
    margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.45, left: 50, right: 50),
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 216, 200, 159),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black, blurRadius: 10, offset: Offset(0, 0.5))
        ]),
    child: SingleChildScrollView(
      child: Column(children: [
        _textYourForm(),
        _textFieldEmail(),
        _textFielPassword(),
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
          "Iniciar Sesion",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        )),
  );
}

Widget _textYourForm() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: Text(
      "Inicio de Sesion",
      style: TextStyle(
          fontFamily: "kanit",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 92, 40, 0)),
    ),
  );
}

Widget _textFieldEmail() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 40),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Correo electronico", prefixIcon: Icon(Icons.email)),
    ),
  );
}

Widget _textFielPassword() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 40),
    child: TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration:
          InputDecoration(hintText: "Contraseña", prefixIcon: Icon(Icons.lock)),
    ),
  );
}

Widget _textNoTengoCuenta(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "No tienes cuenta?",
        style: TextStyle(
          color: Color.fromARGB(255, 136, 59, 0),
          fontSize: 15,
          fontFamily: "kanit",
        ),
      ),
      SizedBox(width: 10),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MyRegistroPage2(),
            ));
          },
          child: Text("Regístrate"))
    ],
  );
}

Widget _backgroundCover(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.50,
    color: Color.fromARGB(255, 136, 59, 0),
  );
}

Widget _imageCover() {
  return SafeArea(
    child: Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      alignment: Alignment.center,
      child: Image.asset(
        "assets/images/logo.jpg",
        width: 250,
      ),
    ),
  );
}

Widget _slogan() {
  return Text(
    "Cerca de tu alcance",
    style: TextStyle(
        fontFamily: "kanit",
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 242, 191, 134)),
  );
}
