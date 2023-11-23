import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/login.dart';

class MyBotonInicio extends StatefulWidget {
  const MyBotonInicio({super.key});

  @override
  State<MyBotonInicio> createState() => _MyBotonInicioState();
}

class _MyBotonInicioState extends State<MyBotonInicio> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          FilledButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyLoginDeInicio(),
              ));
            },
            child: Text(
              "Comencemos",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 152, 56, 21))),
          ),
        ],
      ),
    );
  }
}
