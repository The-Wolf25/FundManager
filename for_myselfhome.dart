import 'package:equal/Screens/for_myself.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class myselfhome extends StatefulWidget {
  const myselfhome({Key? key}) : super(key: key);

  @override
  State<myselfhome> createState() => _myselfhomeState();
}

class _myselfhomeState extends State<myselfhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => formyself()));
            },
            icon: Icon(Icons.arrow_back)),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 126, 196, 128),
        centerTitle: true,
        title: Text(
          'Eq=al',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                  tileColor: Color.fromARGB(255, 234, 243, 234),
                  title: Text('Bar'),
                  trailing: Text('-200', style: TextStyle(color: Colors.red))),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  tileColor: Color.fromARGB(255, 234, 243, 234),
                  title: Text('Cryto Profits'),
                  trailing: Text('500', style: TextStyle(color: Colors.green))),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                  tileColor: Color.fromARGB(255, 234, 243, 234),
                  title: Text('Books'),
                  trailing: Text(
                    '-20',
                    style: TextStyle(color: Colors.red),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
