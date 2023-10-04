import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:pro_july/gridview_examples/gridview1.dart';
import 'package:pro_july/gridview_examples/gridview5.dart';
import 'package:pro_july/listview%20example/fi%20card%20using_stack.dart';
import 'package:pro_july/stateful_login.dart';

void main(){  runApp(MaterialApp(home: BottomBarex(),));
}
class BottomBarex extends StatefulWidget {
  @override  State<BottomBarex> createState() => _BottomBarexState();
}
class _BottomBarexState extends State<BottomBarex> {
  int index =0;
var screens =[
  Ficard(),
  GrideView1(),
  GridView5(),
  Login_stateful()];
@override
Widget build(BuildContext context) {
  return Scaffold(
  bottomNavigationBar: ConvexAppBar(
      style: TabStyle.react,
      items: [
    TabItem(icon: Icons.list),
    TabItem(icon: Icons.calendar_today),
    TabItem(icon: Icons.assessment),
    TabItem(icon: Icons.add_box_sharp),
        TabItem(icon: Icons.search)
  ],
      initialActiveIndex: 1,
      onTap: (tapedindex){
    setState(() {
      index= tapedindex;
    });
  }      ),

  // bottomNavigationBar: BottomNavigationBar(
    //   //  type: BottomNavigationBarType.fixed,
  //   type: BottomNavigationBarType.shifting,
    //     backgroundColor: Colors.green,
  //     selectedItemColor: Colors.yellow,
    //     currentIndex: index,
  //     onTap: (tappedindex){
    //       setState(() {
  //         index=tappedindex;
    // here index value changed according to each tap
    //       });
  //     },
    //     items: [
  //   BottomNavigationBarItem(
    //       backgroundColor: Colors.yellow,
  //
  //       icon: Icon(Icons.home),label: "Home"),
    //   BottomNavigationBarItem(
  //       backgroundColor: Colors.red,
    //       icon: Icon(Icons.add_box_rounded),label: "Reels"),
  //   BottomNavigationBarItem(
    //       backgroundColor: Colors.blueAccent,
  //       icon: Icon(Icons.park_rounded),label: "Notify"),
    //   BottomNavigationBarItem(
  //       backgroundColor: Colors.black87,
    //       icon: Icon(Icons.account_box),label: "Profile"),
  //      //
  // ]),     body:screens[index] ,
);  }
}