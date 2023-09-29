import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(home: GrideView1(),
  ));
}
class GrideView1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView1'),
      ),
      body : GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: List.generate(15,
            (index) => Card(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Icon(Icons.adb),
            ),
      ),
      )
    );
  }
}
