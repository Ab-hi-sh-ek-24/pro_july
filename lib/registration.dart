import 'package:flutter/material.dart';import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(     home: Registration_Page (),
  )) ;}
class Registration_Page extends StatelessWidget{
  @override  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Registration page"),   ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        children: [             Image.asset("assets/icon/Lion.png", width:100,height:100,),
          Text(               "My App July",
            style: GoogleFonts.cabinSketch(                   fontSize: 30,
                fontWeight: FontWeight.normal,                   color: Colors.lightBlue
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "UserName",
                  labelText: "UserName",
                prefixIcon: Icon(Icons.account_circle_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                )               ),
            ),             ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(                 decoration: InputDecoration(
                hintText: "Email id",                     labelText: "Email id",
                prefixIcon: Icon(Icons.mail_outlined),
                border: OutlineInputBorder(                         borderRadius: BorderRadius.all(Radius.circular(15.0))
                )                 ),
            ),             ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.password_sharp),                     border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0))                     )
            ),               ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            decoration: InputDecoration(                     hintText: "Confirm Password",
                labelText: "Confirm Password",
                prefixIcon: Icon(Icons.password_sharp),                     border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))                     )
            ),               ),
          ),
          ElevatedButton(onPressed:() {}, child: Text("Login")),

        ],
      ),     ),
    );
  }
}