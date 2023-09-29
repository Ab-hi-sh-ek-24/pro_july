import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridView3(),));
}

class GridView3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children:List.generate(10, (index) => Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color:  Colors.primaries[index % Colors.primaries.length],),
            child: Column(
              children: [
                Image.asset("assets/image/grapes.png",height: 100,),
                Text("Food1",style: TextStyle(fontSize: 20),),
                Text("120\$",style: TextStyle(fontSize: 10),)
              ],
            ),
          )),),
      ),
    );
  }
}