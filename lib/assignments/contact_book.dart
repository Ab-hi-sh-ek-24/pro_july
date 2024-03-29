import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Contact1(),));
}
class Contact1 extends StatelessWidget {
  var name=['Amal','Vichu','Arun','Abhi','Suraj','Rahul','Akash','Abhiram'];
  var phn=[9870654321,3435367788,9978675543,8899076545,9887765443,1223344567,4454545455,87878787879];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleContactList"),
      ),
      body: ListView(
          children:
          List.generate(8, (index) =>Card(
            child: ListTile(
              title: Text("${name[index]}"),
              subtitle: Text("${phn[index]}"),
              leading: CircleAvatar(
                  backgroundColor: Colors.primaries[ index % Colors.primaries.length ],
                  child: Icon(Icons.account_circle)),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          )
          )
      ),
    );
  }
}