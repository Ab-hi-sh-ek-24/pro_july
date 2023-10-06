import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drawer2(),
    debugShowCheckedModeBanner: false,
  ));
}

class drawer2 extends StatelessWidget {
  const drawer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar',
        )),
        body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/image/pichai.jpeg'),
                        fit: BoxFit.cover)
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Sundar pichai',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
          Expanded(
              child: SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.all(15.0),
          child: Text('''Pichai Sundararajan, better known as Sundar Pichai, is an Indian-born American business executive. He is the chief executive officer of Alphabet Inc. and its subsidiary Google. Pichai began his career as a materials engineer.Pichai was selected to become the next CEO of Google on August 10, 2015, after previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.
                Pichai was selected to become the next CEO of Google on August 10, 2015, after previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.Pichai was selected to become the next CEO of Google on August 10, 2015, after previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.
                Pichai was selected to become the next CEO of Google on August 10, 2015, after previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.'''),
              )
    )
          )
        ]
      ),
        drawer: Drawer(
    child: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors:[Colors.red,
    Colors.yellow,
    Colors.orange] )

    ),
          child: ListView(
              children: [
          ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage ('assets/image/pichai2.jpeg'),),
      title: Text('Sundar pichai'),
      subtitle: Text('C.E.O at alphabet Inc.'),
    ),
        Divider(),
        ListTile(
          leading: Icon(Icons.dashboard),
          title: Text('Dashboard'),
    ),
                ListTile(
          leading: Icon(Icons.leaderboard_sharp),
          title: Text('Leads'),
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('Clients'),
        ),
        ListTile(
          leading: Icon(Icons.rocket_launch),
          title: Text('Projects'),
        ),
        ListTile(
          leading: Icon(Icons.subscriptions_sharp),
          title: Text('Subscriptions'),
        ),
        ListTile(
          leading: Icon(Icons.waving_hand),
          title: Text('Patients'),
        ),
        ListTile(
          leading: Icon(Icons.payments_sharp),
          title: Text('Payments'),
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Users'),
        ),
        ListTile(
          leading: Icon(Icons.library_books),
          title: Text('Library'),
        ),
        SizedBox(height: 100,),
        Container(
            height: 30,
            width: 200,
            decoration: BoxDecoration(color: Colors.redAccent,
                borderRadius: BorderRadius.circular(45)
            ),
            child: Center(
              child: Text('Log Out'),
            ),
        )],
    )
    )
    )
    );
  }
}
