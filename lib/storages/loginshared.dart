import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homeshared.dart';
void main() {
  runApp(MaterialApp(home: Login_Shared()));
}


class Login_Shared extends StatefulWidget {
  @override
  State<Login_Shared> createState() => _Login_SharedState();
}

class _Login_SharedState extends State<Login_Shared> {
  final userName = TextEditingController();
  final passWord = TextEditingController();
  late bool newUser;
  late SharedPreferences prefs;
  @override
  void initState() {
    check_user_already_login();
    super.initState();
  }
  void check_user_already_login() async{
    prefs = await SharedPreferences.getInstance();
    newUser = prefs.getBool('firstlogin') ?? true;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Column(
        children: [
          TextField(
            controller: userName,
            decoration: const InputDecoration(
              hintText: "UserName",
            border: OutlineInputBorder()),
          ),
          TextField(
            controller: passWord,
            decoration: const InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder()),
          ),
          ElevatedButton(onPressed: (){
            String uname = userName.text.trim();
            String pass = passWord.text.trim();
            if(uname != '' && pass != '' ){
              prefs.setString('username', uname);
              prefs.setString('password', pass);
              //first lodin false means user already logged in
              prefs.setBool('firstlogin',false);

              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=>Home_Shared()));
            }
            }, child: const Text("Login"))

        ],
      ),

    );
  }


}
