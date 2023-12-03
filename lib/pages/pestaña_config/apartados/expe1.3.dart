import 'package:flutter/material.dart';
import 'package:panalavista_definitivo/widgets/drawer.dart';

class Apartado3 extends StatelessWidget {
  const Apartado3 ({super.key});
  
    final String imagaset ="assets/images/barco.jpg";

  @override
  Widget build(BuildContext context) {
    final duration = Duration(seconds: 1);
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
        backgroundColor: const Color.fromARGB(255, 136, 59, 0),
      ),
      drawer: Drawer(child: MyDrawer()),
      body: 
       Container(decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color(0xFFFBA3660),
          Color(0xFF1C256E),
        ],
        stops: [0.3, 0.75],
      ),
    ),
        child:
      ListView(
        
        children: [
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
      
    ));
  }

  Widget apartados(String title, String location, String rating, VoidCallback clikBoton2) {
    final ScrollController _horizontal = ScrollController(),
      _vertical = ScrollController();
  


    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
    
    Container(
      height: 945,
      width: 800 ,
      margin:  EdgeInsets.all(10.0),
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
     

      child: Container(
      //controller: _horizontal,
      child: ListTile(
       
        
        title: Row(
        children: [
          Column(
            children:[
              Container(
            
            margin:  EdgeInsets.only(top: 19, right: 10),
            padding: EdgeInsets.only(bottom: 0),
            width: 120,
            height: 100,
            
            
            decoration: BoxDecoration(
                   
                    border: Border.all(
                    color: Color.fromARGB(255, 0, 173, 136),
                    
                    width: 0,),
                  
                     image: DecorationImage(
                      image: AssetImage(
                       imagaset),
                      fit: BoxFit.cover,
                    ),
                    ),
                    
           child:GestureDetector(
          onTap: clikBoton2,),),
         Container(
         width: 80,
        child:Text('panes mas elaborados'),),
        ]),

              
          
          
          Container(
            margin:  EdgeInsets.only(left:0, bottom: 10),
            padding:  EdgeInsets.only(top:18),
            decoration: BoxDecoration(
         image: DecorationImage(
                      image: AssetImage(
                       "assets/images/barco.jpg",),
                      fit: BoxFit.cover,
                    ),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
         colors: [Color.fromARGB(255, 37, 196, 108), Color.fromARGB(255, 1, 185, 185)]),
      
           boxShadow: [
      BoxShadow(
        
        offset: Offset(0, 0),
        blurRadius: 1,
        
      ),
    ],
          ),
            width: 190,
            height: 100,
            child: Column(
              
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 241, 234, 234)
                  ),
                  
                ),
                Text(location,style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                Text(rating, style: TextStyle(color: Color.fromARGB(255, 245, 243, 243))),
              ],
            ),
          ),

          Container(
            height: 100,
            width: 200,
            margin:  EdgeInsets.only(left:18, top: 0,bottom: 10),
            padding:  EdgeInsets.only(top:18),
            decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
        colors: [Color.fromARGB(255, 5, 189, 196), Color.fromARGB(255, 1, 87, 185)]),
           boxShadow: [
      BoxShadow(
        offset: Offset(0, 0),
        blurRadius: 1,
      ),
    ],
          ),
            
            
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 226, 226, 226)
                  ),
                  
                ),
                Text(location,style: TextStyle(color: const Color.fromARGB(255, 247, 246, 244)),),
                Text(rating, style: TextStyle(color: const Color.fromARGB(255, 247, 246, 244))),
              ],
            ),
          ),
        Container(
            height: 100,
            margin:  EdgeInsets.only(left:18, top: 0,bottom: 10),
            padding:  EdgeInsets.only(top:18),
            decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
         colors: [Color.fromARGB(255, 37, 196, 108), Color.fromARGB(255, 1, 185, 185)]),
           boxShadow: [
      BoxShadow(
        offset: Offset(0,0),
        blurRadius: 1,
      ),
    ],
          ),
            width: 200,
            
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 226, 226, 226)
                  ),
                  
                ),
                Text(location,style: TextStyle(color: const Color.fromARGB(255, 247, 246, 244)),),
                Text(rating, style: TextStyle(color: const Color.fromARGB(255, 247, 246, 244))),
              ],
            ),
          ),

        ],
      ),)
    )));
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

