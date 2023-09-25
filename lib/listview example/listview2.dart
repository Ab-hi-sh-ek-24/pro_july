import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listview2(),));
}

class Listview2 extends StatelessWidget {
  var title = ['Data1','Data2','Data3','Data4','Data5','Data6','Data7','Data8','Data9','Data10'];
  var subti = [20, 30, 40, 50, 100, 140, 150, 310, 200, 190];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview 2"),
      ),
      body: ListView(
        children: List.generate(10, (index) =>  Card(
          child: ListTile(
            title: Text(title[index]),
            subtitle: Text('${subti[index]}'),
            //leading: Image.asset(images[index]),
            trailing: Icon(Icons.shopping_cart),


          ),

        )),
      ),
    );
  }
}
