import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(home: Gridview1(),
  ));
}
class Gridview1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount:5,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index){
            return Card(
              color: Colors.primaries[index % Colors.primaries.length],
              child: const Text("Hello"),
            );

      }),
    );
  }
}
