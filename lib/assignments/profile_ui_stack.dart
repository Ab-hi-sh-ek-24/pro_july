import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Beckham(),
  ));
}
class Beckham extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.blue
          )
      ),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Profile "),
            actions: [
              Icon(Icons.more_vert),

            ],
          ),

          body: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/image/Beckham.jpg"),
              ),






              ListTile(
                title: Center(child: Text("David Beckham", style: TextStyle(fontSize: 20),),) ,
                subtitle: Center(child: Text("Model / super star", style: TextStyle(fontSize: 15,color: Colors.blue)),),
              ),



            ],
          )



      ),

    );
  }
}