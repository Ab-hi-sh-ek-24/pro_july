import 'package:flutter/material.dart';
import 'package:pro_july/passing_data_between_screens/using_constructor/toStatefulpage.dart';
import 'package:pro_july/passing_data_between_screens/using_constructor/toStatelessPage.dart';


import '../using_navigator/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage2(),
  ));
}

class MainPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Passing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>
                        DataStateless(
                            name: "Luminar",
                            location: "Kakkanad",
                            phone: 98765432,
                            img : products[0]['image']))),
                child: const Text('To StateLess')),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>
                        DataStateful(
                            name: "Luminar",
                            location: "Kakkanad",
                            phone: 98765432,
                            img : products[3]['image']))),
                child: const Text('To StateFul')),
          ],
        ),
      ),
    );
  }
}