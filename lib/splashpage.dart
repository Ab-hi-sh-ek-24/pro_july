import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {//to run an app
  runApp(MaterialApp(  // default theme of our flutter app
    home: Splashpage(), //initial page to be launched while running an app
  )); //materialapp // materialapp

}
class Splashpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Container(
          decoration: const BoxDecoration(
            // color: Colors.black38
            // image: DecorationImage(
            //  fit: BoxFit.cover,
            //  image: NetworkImage("https://images.unsplash.com/photo-1519962551779-514fa155be9a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1885&q=80"),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.green,
                    Colors.white70,
                    Colors.black12


                  ])
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///adding built in icons
                // Icon(Icons.favorite,size: 80,color: Colors.red,),
                /// adding external icons (flutter accessed it as image)
                Image(image: NetworkImage("https://cdn1.iconfinder.com/data/icons/logotypes/32/windows-512.png"),
                  width: 100,
                  height: 100,
                ),
                Text("My application",style: GoogleFonts.dancingScript(
                    fontSize: 30,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold
                ),



                )
              ],

            ),
          ),  // center
        ));
  }

}