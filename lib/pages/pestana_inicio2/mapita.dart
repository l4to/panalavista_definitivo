import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/widgets/para_inicio/barra_Busqueda.dart';

class MyMapita extends StatelessWidget {
  const MyMapita({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MyBarraDeBusqueda(onSearch: (query) {}),
          Expanded(
            child: InteractiveViewer(
              child: Image.asset("assets/images/Mapa_panaderias.jpg"),
              boundaryMargin: EdgeInsets.all(20),
              minScale: 2.5,
              maxScale: 6.0,
            ),
          ),
        ],
      ),
    );
  }
}
