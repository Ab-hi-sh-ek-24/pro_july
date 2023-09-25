import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: ListView1(),));
}
class ListView1 extends StatelessWidget {
  const ListView1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView 1"),
      ),
      body: ListView(
        children: const [
           Card(
            child: ListTile(
              leading: Icon(Icons.people_alt_rounded),
              title: Text('Product 1'),
              subtitle: Text ("This is a sample subtitle"),
              trailing: Text('10.11'),

            )),
          Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/person.jpeg")),
                  title:  Text('product 1'),
              subtitle: Text("This is a sample subtitle"),
          trailing: Text('10.11'),
              )),
          Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/image/person1.jpeg")),
              title: Text('Product 2'),
              subtitle: Text("This is a sample subtitle"),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

              Text('10.11'),
              CircleAvatar(
                minRadius: 6,
                maxRadius: 12,
                backgroundColor: Colors.teal,
              child: Text('2'),
              )
                ],
            ),

            ))




        ],
      ),

    );
  }
}
