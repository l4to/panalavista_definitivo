import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:panalavista_definitivo/pages/crear_panaderia/crear_panaderia.dart';
import 'package:panalavista_definitivo/pages/pesta%C3%B1a_config/ubicaciones.dart';
import 'package:panalavista_definitivo/widgets/drawer.dart';

class MiPanaderia extends StatelessWidget {
  const MiPanaderia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Usuario"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CrearPanaderia(),
              ));
            },
            child: const Text(
              "Crear",
              style: TextStyle(
                color: Colors.white, // Color del texto
              ),
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 136, 59, 0),
      ),
      drawer: Drawer(child: MyDrawer()),
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
         colors: [Color.fromARGB(255, 245, 191, 111), Color.fromARGB(255, 245, 191, 111)])),
        child:
      
      ListView(
        children: [
          _buildContainer(
              "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas",(){ Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const MyUbicacion();
              }));}),
          _buildContainer(
              "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas",(){}),
           _buildContainer(
              "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas",(){ Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const MyUbicacion();
              }));}),
          _buildContainer(
              "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas",(){}),
           _buildContainer(
              "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas",(){ Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const MyUbicacion();
              }));}),
          _buildContainer(
              "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas",(){}),
           _buildContainer(
              "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas",(){ Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const MyUbicacion();
              }));}),
          _buildContainer(
              "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas",(){}),
           _buildContainer(
              "Panaderia 1", "Ubicacion: loremas asdmak", "5 estrellas",(){ Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const MyUbicacion();
              }));}),
          _buildContainer(
              "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas",(){}),
        ],
      ),),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 136, 59, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String title, String location, String rating, VoidCallback clikBoton2,) {
    return GestureDetector(
      onTap: clikBoton2,
      child:Column(children: [
        
      Container(
       
      height: 120,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
         colors: [Color.fromARGB(255, 212, 68, 1), Color.fromARGB(255, 185, 136, 1)])),
      child: Row(
        children: [
          Container(
            
            width: 85,
            margin: const EdgeInsets.only(left:5.0),
         decoration: BoxDecoration(
                   
                    
                     image: DecorationImage(
                      image: AssetImage(
                       "assets/images/barco.jpg",),
                      fit: BoxFit.cover,
                    ),
                    ),
            ),
          
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(location),
                const SizedBox(height: 10),
                Text(rating),
              ],
            ),
          ),
        ],
      ),
    )],));
  }
}
