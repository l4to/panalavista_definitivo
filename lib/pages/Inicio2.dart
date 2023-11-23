import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/pages/pestana_inicio2/Favoritos.dart';
import 'package:panalavista_definitivo/pages/pestana_inicio2/mapita.dart';
import 'package:panalavista_definitivo/widgets/drawer.dart';

class MyLogeo extends StatefulWidget {
  const MyLogeo({super.key});

  @override
  State<MyLogeo> createState() => _MyLogeoState();
}

class _MyLogeoState extends State<MyLogeo> {
  int _paginActual = 0;
  List<Widget> _paginas = [MyMapita(), MyFavoritos()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panaderías disponibles"),
        backgroundColor: Color.fromARGB(255, 165, 80, 15),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: _paginas[_paginActual],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 165, 80, 15),
          selectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              _paginActual = index;
            });
          },
          currentIndex: _paginActual,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Mapa",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite, color: Colors.white),
                label: "Favoritos")
          ]),
    );
  }
}
