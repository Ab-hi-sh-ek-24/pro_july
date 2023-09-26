import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: AppBar1(),));
}
class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title:  const Text("WhatsApp"),
          actions:  [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 15,),
            Icon(Icons.search_rounded),
            PopupMenuButton(itemBuilder: (context){
              return [
                const PopupMenuItem(child: Text("New BroadCast")),
                const PopupMenuItem(child: Text("New Group")),

              ];
            }),

          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: Container(
            child: TabBar(
              tabs: [
                Tab(
                  icon:FaIcon(FontAwesomeIcons.users),
                ),
                Tab(
                  text:"Chats",
                ),
                Tab(
                  text:"Status",
                ),
                Tab(
                  text:"Calls",
                ),

              ],
            ),
          )),
        ),
        body: TabBarView(
          children: [
            

          ]),
      ),
    );
  }
}





