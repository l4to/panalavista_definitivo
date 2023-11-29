import 'package:flutter/material.dart';

class MyFavoritos extends StatelessWidget {
  const MyFavoritos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          body: Column(
            children: [
              MySegundaBarradeBusqueda(
                onSearch: (query) {},
              ),
              Expanded(
                child: Lista_panaderias(todo: [
                  Panaderias(
                    panaderia: "Panaderia Flor",
                    panaderos: "Flora Martinez",
                    click: () {
                      
                    },
                  ),
                  Panaderias(
                    panaderia: "Ariana's",
                    panaderos: "Ariana Shonn",
                    click: () {
                      
                    },
                  ),
                  Panaderias(
                    panaderia: "Panaderia el suculento",
                    panaderos: "Adam Sandler",
                    click: () {
                      
                    },
                  ),
                  Panaderias(
                    panaderia: "Los Super Hermanos Wayro",
                    panaderos: "Jhonn Wayro, Peter Wayro",
                    click: () {
                      
                    },
                  ),
                  Panaderias(
                    panaderia: "Los Super Hermanos Wayro",
                    panaderos: "Jhonn Wayro, Peter Wayro",
                    click: () {
                      
                    },
                  ),
                  Panaderias(
                    panaderia: "Los Super Hermanos Wayro",
                    panaderos: "Jhonn Wayro, Peter Wayro",
                    click: () {
                      
                    },
                  ),
                  Panaderias(
                    panaderia: "Los Super Hermanos Wayro",
                    panaderos: "Jhonn Wayro, Peter Wayro",
                    click: () {
                      
                    },
                  ),
                  Panaderias(
                    panaderia: "Los Super Hermanos Wayro",
                    panaderos: "Jhonn Wayro, Peter Wayro",
                    click: () {
                      
                    },
                  ),
                  Panaderias(
                    panaderia: "Los Super Hermanos Wayro",
                    panaderos: "Jhonn Wayro, Peter Wayro",
                    click: () {
                      
                    },
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Para las panaderias
class Panaderias {
  String panaderia;
  String panaderos;
  final VoidCallback click;

  Panaderias({
    required this.panaderia,
    required this.panaderos,
     required this.click,
  });
}

class Lista_panaderias extends StatelessWidget {
  final List<Panaderias> todo;

  const Lista_panaderias({required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todo.length,
      itemBuilder: (context, index) {
        final todito = todo[index];
        return ListTile(
          leading: Icon(
            Icons.business,
            color: Color.fromARGB(255, 165, 80, 15),
          ),
          onTap: todito.click ,
          title: Text(todito.panaderia),
          subtitle: Text(todito.panaderos),
          trailing: Icon(
            Icons.remove,
            color: Color.fromARGB(255, 165, 80, 15),
          ),
        );
      },
    );
  }
}

//Para la barra de busqueda

class MySegundaBarradeBusqueda extends StatefulWidget {
  final Function(String) onSearch;

  MySegundaBarradeBusqueda({required this.onSearch});

  @override
  _MyBarraDeBusquedaState createState() => _MyBarraDeBusquedaState();
}

class _MyBarraDeBusquedaState extends State<MySegundaBarradeBusqueda> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: "Buscar entre mis favoritos",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        onChanged: (query) {
          widget.onSearch(query);
        },
      ),
    );
  }
}
