import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/widgets/drawer.dart';

class Apartado2 extends StatelessWidget {
  const Apartado2 ({super.key});
  
    final String imagaset ="assets/images/barco.jpg";
    

  @override
  Widget build(BuildContext context) {
    final duration = Duration(seconds: 1);
    final ScrollController _horizontal = ScrollController(),
      _vertical = ScrollController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 56, 148, 209),
        child: Icon(
          Icons.star_border_purple500_sharp,
          size: 30,
        ),
        onPressed: () {
          

        },
      ),
      appBar: AppBar(
        title: Text("Panes mas comprados"),
        backgroundColor: const Color.fromARGB(150, 21, 216, 118),
      ),
      drawer: Drawer(child: MyDrawer()),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller:_vertical ,
      child:
       Container(
        width: 570,
        height: 800,
        decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color.fromARGB(255, 186, 177, 54),
          Color.fromARGB(255, 7, 44, 94),
        ],
        stops: [0.3, 0.75],
      ),
    ),
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child: Container(child:
        Column(children: [
          apartados(
              "Cachito", 
              "3 panes por 1 sol",
               "ir a la tienda ",(){
                 Navigator.of(context).push(
              PageRouteBuilder(
                transitionDuration: duration,
                reverseTransitionDuration: duration,
                pageBuilder: (context, animation, _) {
                  return FadeTransition(
                    opacity: animation,
                    child:  ImageFullScreen(
                    ),
                  );
                },
              ),
            );
              }),
          apartados(
              "Cachito", 
              "3 panes por 1 sol",
               "ir a la tienda ",(){
                 Navigator.of(context).push(
              PageRouteBuilder(
                transitionDuration: duration,
                reverseTransitionDuration: duration,
                pageBuilder: (context, animation, _) {
                  return FadeTransition(
                    opacity: animation,
                    child:  ImageFullScreen(
                    ),
                  );
                },
              ),
            );
              }),
          apartados(
              "Cachito", 
              "3 panes por 1 sol",
               "ir a la tienda ",(){
                 Navigator.of(context).push(
              PageRouteBuilder(
                transitionDuration: duration,
                reverseTransitionDuration: duration,
                pageBuilder: (context, animation, _) {
                  return FadeTransition(
                    opacity: animation,
                    child:  ImageFullScreen(
                    ),
                  );
                },
              ),
            );
              }),

          apartados(
              "Cachito", 
              "3 panes por 1 sol",
               "ir a la tienda ",(){
                 Navigator.of(context).push(
              PageRouteBuilder(
                transitionDuration: duration,
                reverseTransitionDuration: duration,
                pageBuilder: (context, animation, _) {
                  return FadeTransition(
                    opacity: animation,
                    child:  ImageFullScreen(
                    ),
                  );
                },
              ),
            );
              }),
        ],
      ),
      
    )))));
  }

  


  Widget apartados(String title, String location, String rating, VoidCallback clikBoton2) {
    
  


    return Row(
    children:[
    Container(
      height: 190,
      width: 150 ,
      margin: EdgeInsets.only(top:30, left: 30, right: 30, bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      
           boxShadow: [
      BoxShadow(
        color: Color.fromARGB(82, 231, 231, 231),
        offset: Offset(0, 0),
        blurRadius: 1,
      ),
    ],
          ),
     

      
      //controller: _horizontal,
      child: ListView(
        children: [
           
              Container(
            
            margin:  EdgeInsets.only(top: 10, right: 7,left: 7),
            
            width: 0,
            height: 70,
            
            
            decoration: BoxDecoration(
                  
                     image: DecorationImage(
                      
                      image: AssetImage(
                       imagaset),
                       
                      fit: BoxFit.cover,
                    )
                    ),
                    
           child:GestureDetector(
          onTap: clikBoton2,),),
         Container(
         width: 70,
         padding: EdgeInsets.only(top: 30,left: 40, right: 40),  
        child:Text('panes mas elaborados con mieeerda'),),
        ]),  
      ),

      Container(
      height: 190,
      width: 150 ,
      
      padding:  EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      
           boxShadow: [
      BoxShadow(
        color: Color.fromARGB(82, 231, 231, 231),
        offset: Offset(0, 0),
        blurRadius: 1,
      ),
    ],
          ),
     

      
      //controller: _horizontal,
      child: ListView(
        children: [
           
              Container(
            
            margin:  EdgeInsets.only(top: 19, right: 10,left: 10),
            width: 0,
            height: 70,
            
            
            decoration: BoxDecoration(
                  
                     image: DecorationImage(
                      
                      image: AssetImage(
                       imagaset),
                       
                      fit: BoxFit.cover,
                    )
                    ),
                    
           child:GestureDetector(
          onTap: clikBoton2,),),
         Container(
          padding: EdgeInsets.only(top: 30,left: 40, right: 40),
         width: 100,
        child:Text('panes mas elaborados con mieeerda'),),
        ]),
        ),

        Container(
      height: 190,
      width: 150 ,
      margin: EdgeInsets.only(top:30, bottom: 30, right: 30,left: 30),
      padding:  EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      
           boxShadow: [
      BoxShadow(
        color: Color.fromARGB(239, 231, 231, 231),
        offset: Offset(0, 0),
        blurRadius: 1,
      ),
    ],
          ),
     
      child: ListView(
        children: [
           
              Container(
            
            margin:  EdgeInsets.only(top: 19, right: 10,left: 10),
            width: 0,
            height: 70,
            
            
            decoration: BoxDecoration(
                  
                     image: DecorationImage(
                      
                      image: AssetImage(
                       imagaset),
                       
                      fit: BoxFit.cover,
                    )
                    ),
                    
           child:GestureDetector(
          onTap: clikBoton2,),),
         Container(
          padding: EdgeInsets.only(top: 30,left: 40, right: 40),
         width: 100,
        child:Text('panes mas elaborados con mieeerda'),),
        ]), ),
    ]);
  }
}


// aqui voy aponer la clases para poder agrandar la imagen

class ImageFullScreen extends StatelessWidget {
  const  ImageFullScreen ({super.key, });
  

  final String imageaset ="assets/images/barco.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Hero(
          tag: 'my_image',
          child: Image.asset(
            imageaset,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

