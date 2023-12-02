import 'dart:io';
import 'package:rating_bar_custom/rating_bar_custom.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Comentar extends StatefulWidget {
  const Comentar({super.key});

  @override

   State<Comentar> createState() => ComentarState();
}

class ComentarState extends State<Comentar> {


  List<String> productosOfrecidos = [];
  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comentar :)"),
        backgroundColor:Color.fromARGB(255, 136, 59, 0),
      ),
      body: 
      
      SingleChildScrollView(
        child:
        Container( 
        height: 900,
        color: Color.fromARGB(255, 206, 163, 34),
        
        
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.only(bottom: 20),
               child:Text("Las opiniones son publicas y anonimas y no contienen información personal ",
                style: TextStyle(color: Color.fromARGB(255, 136, 59, 0), fontSize: 17)),),

            Container(
            margin:  EdgeInsets.only(left:100.0,top: 10, bottom: 10),
            child: RatingBarCustom(
            sizeIcon: 20,
            numberStars: 10,
            starCount: 3.5,
            colorStar: const Color.fromARGB(255, 136, 59, 0),),),
              SizedBox(height: 20),
             
              _buildTextField("Describenos tu experiencia (opcional)"),

              SizedBox(height: 20),

              // Productos ofrecidos
              
              _buildTextnombre( ),

              // Botón para guardar los datos
              Row(children: [
              Container(
              margin: EdgeInsets.only(top:30, left: 127),  
              child:
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                    foregroundColor: Color.fromARGB(255, 236, 236, 236),
                  ),
                
                onPressed: () {
                  // Aquí puedes guardar los datos ingresados
                },
                child: Text("cancelar"),
              ),),

              Container(
              margin: EdgeInsets.only(top:30,left: 30),  
              child:
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 136, 59, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                    foregroundColor: Color.fromARGB(255, 236, 236, 236),
                  ),
                
                onPressed: () {
                  // Aquí puedes guardar los datos ingresados
                },
                child: Text("publicar"),
              ),),
              
              ],),
            ],
          ),
        ),
      ),
    ),);
  }

  Widget _buildTextField(
      String texto ) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 3,color: const Color.fromARGB(255, 179, 0, 0)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        maxLines: 7,
        decoration: InputDecoration(labelText: texto, contentPadding: EdgeInsets.only(top: 0)),
        onChanged:(String value) async {
              if (value != '13') {
                return;}
        },
      ),
    );
  }

  Widget _buildTextnombre( ) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 3,color: const Color.fromARGB(255, 179, 0, 0,)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
                controller: _controller,
                decoration: InputDecoration( labelText: 'Agregar nombre (opcional)', contentPadding: EdgeInsets.only(top:36,bottom: 20), ),
              ),
    );
  }
}
